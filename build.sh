#!/bin/bash
#===============================================================================
# Noble60 App Builder - Universal Version
#===============================================================================
# This script builds the Noble60 Ledger app for your firmware version
# Supports API Level 22 (firmware 1.3.x) and API Level 25 (firmware 1.5.0)
#
# Usage: ./build.sh [api_level]
#   If api_level not specified, will prompt interactively
#===============================================================================

set -e

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo ""
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║          Noble60 App Builder - Universal Version               ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Get API level from argument or prompt
if [ -n "$1" ]; then
    API_LEVEL="$1"

    if [ "$API_LEVEL" != "22" ] && [ "$API_LEVEL" != "25" ]; then
        echo -e "${RED}❌ Error: Invalid API level '${API_LEVEL}'${NC}"
        echo -e "${YELLOW}Valid options: 22 or 25${NC}"
        echo ""
        exit 1
    fi
else
    echo -e "${CYAN}[Step 1/3] Select API Level${NC}"
    echo ""
    echo -e "${YELLOW}Please select API level based on your Ledger firmware:${NC}"
    echo ""
    echo -e "${BLUE}Available Options:${NC}"
    echo -e "  ${CYAN}22${NC} - For firmware 1.3.1 or 1.3.2"
    echo -e "  ${CYAN}25${NC} - For firmware 1.5.0 or newer"
    echo ""
    echo -e "${YELLOW}💡 To check firmware version:${NC}"
    echo "  1. On your Ledger, press both buttons for Settings"
    echo "  2. Navigate to 'Device' or 'About'"
    echo "  3. Check 'Firmware version'"
    echo ""

    while true; do
        read -p "Which API level to build? (22/25): " API_LEVEL
        if [ "$API_LEVEL" = "22" ] || [ "$API_LEVEL" = "25" ]; then
            break
        fi
        echo -e "${RED}Invalid input. Please enter 22 or 25${NC}"
    done
    echo ""
fi

# Set configuration
if [ "$API_LEVEL" = "22" ]; then
    FIRMWARE_DESC="1.3.1/1.3.2"
elif [ "$API_LEVEL" = "25" ]; then
    FIRMWARE_DESC="1.5.0"
fi

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_DIR="${PROJECT_DIR}/builds/api${API_LEVEL}"

echo -e "${GREEN}Selected Configuration:${NC}"
echo -e "  API Level: ${CYAN}${API_LEVEL}${NC}"
echo -e "  Target Firmware: ${CYAN}${FIRMWARE_DESC}${NC}"
echo -e "  Output Directory: ${CYAN}${OUTPUT_DIR}${NC}"
echo ""

# Delegate to specific build script
BUILD_SCRIPT="${PROJECT_DIR}/build-api${API_LEVEL}.sh"

if [ ! -f "${BUILD_SCRIPT}" ]; then
    echo -e "${RED}❌ Error: Build script not found: ${BUILD_SCRIPT}${NC}"
    exit 1
fi

echo -e "${CYAN}[Step 2/3] Running API ${API_LEVEL} build script...${NC}"
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Execute the specific build script
"${BUILD_SCRIPT}"

BUILD_RESULT=$?

echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

if [ $BUILD_RESULT -eq 0 ]; then
    echo -e "${CYAN}[Step 3/3] Build Summary${NC}"
    echo ""
    echo -e "${GREEN}✅ Build completed successfully!${NC}"
    echo ""
    echo -e "${YELLOW}Build Details:${NC}"
    echo "  API Level: ${API_LEVEL}"
    echo "  Firmware: ${FIRMWARE_DESC}"
    echo "  Output: ${OUTPUT_DIR}/"
    echo ""

    if [ -f "${OUTPUT_DIR}/app.hex" ]; then
        FILE_SIZE=$(ls -lh "${OUTPUT_DIR}/app.hex" | awk '{print $5}')
        echo -e "${YELLOW}Build Artifacts:${NC}"
        ls -lh "${OUTPUT_DIR}/"
        echo ""
    fi

    echo -e "${YELLOW}Next Steps:${NC}"
    echo -e "  1. Install to device: ${CYAN}./install.sh${NC}"
    echo -e "  2. Or use specific installer: ${CYAN}./install-api${API_LEVEL}.sh${NC}"
    echo ""
else
    echo -e "${RED}❌ Build failed${NC}"
    echo ""
    echo -e "${YELLOW}Please check the error messages above${NC}"
    echo ""
    exit 1
fi
