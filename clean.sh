#!/bin/bash
#===============================================================================
# Noble60 App Cleaner - Universal Clean Script
#===============================================================================
# This script cleans all build artifacts and temporary files
#
# Usage: ./clean.sh [--all]
#   --all: Also clean the builds/ output directories
#===============================================================================

set -e

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

CLEAN_ALL=false
if [ "$1" = "--all" ]; then
    CLEAN_ALL=true
fi

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${PROJECT_DIR}/ledger-cosmos"
APP_DIR="${SOURCE_DIR}/app"

echo ""
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║               Noble60 App Cleaner - Clean Build                ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check if source directory exists
if [ ! -d "${SOURCE_DIR}" ]; then
    echo -e "${RED}❌ Error: Source directory not found: ${SOURCE_DIR}${NC}"
    exit 1
fi

echo -e "${CYAN}[1/3] Cleaning source directory build artifacts...${NC}"
echo ""

cd "${APP_DIR}"

# Run make clean
if [ -f "Makefile" ]; then
    echo -e "${YELLOW}Running make clean...${NC}"
    make clean 2>&1 || true
    echo -e "${GREEN}✅ Make clean completed${NC}"
else
    echo -e "${YELLOW}⚠️  Makefile not found, skipping make clean${NC}"
fi

# Clean common build directories
echo ""
echo -e "${YELLOW}Cleaning build directories in source...${NC}"

DIRS_TO_CLEAN=(
    "bin"
    "debug"
    "output"
    "build"
    "obj"
    ".build"
)

for dir in "${DIRS_TO_CLEAN[@]}"; do
    if [ -d "${APP_DIR}/${dir}" ]; then
        echo -e "  ${CYAN}Removing ${dir}/${NC}"
        rm -rf "${APP_DIR}/${dir}"
    fi
done

echo -e "${GREEN}✅ Source directory cleaned${NC}"
echo ""

# Clean output directories if --all flag is set
if [ "$CLEAN_ALL" = true ]; then
    echo -e "${CYAN}[2/3] Cleaning builds/ output directories...${NC}"
    echo ""

    if [ -d "${PROJECT_DIR}/builds" ]; then
        echo -e "${YELLOW}Removing builds/api22/...${NC}"
        rm -rf "${PROJECT_DIR}/builds/api22"

        echo -e "${YELLOW}Removing builds/api25/...${NC}"
        rm -rf "${PROJECT_DIR}/builds/api25"

        echo -e "${GREEN}✅ Output directories cleaned${NC}"
    else
        echo -e "${YELLOW}⚠️  No builds/ directory found${NC}"
    fi
else
    echo -e "${CYAN}[2/3] Keeping builds/ output directories${NC}"
    echo -e "${YELLOW}💡 Use --all flag to also clean builds/api22 and builds/api25${NC}"
fi

echo ""
echo -e "${CYAN}[3/3] Cleaning temporary files...${NC}"
echo ""

cd "${PROJECT_DIR}"

# Clean temporary files
TEMP_PATTERNS=(
    "*.pyc"
    "__pycache__"
    ".DS_Store"
    "*.swp"
    "*.swo"
    "*~"
)

for pattern in "${TEMP_PATTERNS[@]}"; do
    found=$(find . -name "$pattern" -type f -o -name "$pattern" -type d 2>/dev/null | wc -l | tr -d ' ')
    if [ "$found" -gt 0 ]; then
        echo -e "  ${CYAN}Removing ${pattern} files...${NC}"
        find . -name "$pattern" -type f -delete 2>/dev/null || true
        find . -name "$pattern" -type d -exec rm -rf {} + 2>/dev/null || true
    fi
done

echo -e "${GREEN}✅ Temporary files cleaned${NC}"
echo ""

# Summary
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ Clean completed successfully!${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

echo -e "${YELLOW}Cleaned:${NC}"
echo "  • Source build artifacts (bin/, debug/, build/, etc.)"
if [ "$CLEAN_ALL" = true ]; then
    echo "  • Output directories (builds/api22/, builds/api25/)"
fi
echo "  • Temporary files (.pyc, .DS_Store, etc.)"
echo ""

if [ "$CLEAN_ALL" = false ]; then
    echo -e "${CYAN}💡 Tip: Your built hex files in builds/ are preserved${NC}"
    echo -e "${CYAN}   Use ${YELLOW}./clean.sh --all${CYAN} to remove them too${NC}"
    echo ""
fi

echo -e "${YELLOW}Next steps:${NC}"
echo -e "  • Rebuild: ${CYAN}./build.sh${NC}"
echo -e "  • Or: ${CYAN}./build-api22.sh${NC} / ${CYAN}./build-api25.sh${NC}"
echo ""
