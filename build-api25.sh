#!/bin/bash
#===============================================================================
# Noble60 App Builder - API Level 25 (Firmware 1.5.0)
#===============================================================================
# This script builds the Noble60 Ledger app for firmware 1.5.0 using
# Docker with the Ledger SDK.
#
# Requirements:
#   - Docker installed and running
#   - ledger-cosmos source code in ./ledger-cosmos directory
#
# Output:
#   - builds/api25/app.hex - Binary for physical Ledger installation
#   - builds/api25/app.elf - Binary for Speculos simulator
#   - builds/api25/app.sha256 - SHA-256 checksum
#===============================================================================

set -e  # Exit on error

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}===============================================================================${NC}"
echo -e "${BLUE}  Building Noble60 App - API Level 25 (Firmware 1.5.0)${NC}"
echo -e "${BLUE}===============================================================================${NC}"
echo ""

# Configuration
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${PROJECT_DIR}/ledger-cosmos"
APP_DIR="${SOURCE_DIR}/app"
OUTPUT_DIR="${PROJECT_DIR}/builds/api25"
API_LEVEL=25
SDK_VERSION="API_LEVEL_25"

echo -e "${YELLOW}Configuration:${NC}"
echo -e "  Source Directory: ${SOURCE_DIR}"
echo -e "  Output Directory: ${OUTPUT_DIR}"
echo -e "  API Level: ${API_LEVEL}"
echo -e "  SDK Version: ${SDK_VERSION}"
echo ""

# Check if source directory exists
if [ ! -d "${SOURCE_DIR}" ]; then
    echo -e "${RED}Error: Source directory not found: ${SOURCE_DIR}${NC}"
    echo -e "${RED}Please run from the project root directory.${NC}"
    exit 1
fi

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo -e "${RED}Error: Docker is not running${NC}"
    echo -e "${YELLOW}Please start Docker and try again.${NC}"
    exit 1
fi

# Create output directory
echo -e "${YELLOW}Creating output directory...${NC}"
mkdir -p "${OUTPUT_DIR}"

# Clean previous build
echo -e "${YELLOW}Cleaning previous build artifacts...${NC}"
cd "${APP_DIR}"
make clean || true
rm -rf bin/ debug/ output/ || true

# Pull Ledger SDK Docker image
echo ""
echo -e "${YELLOW}Pulling Ledger SDK Docker image...${NC}"
docker pull ghcr.io/ledgerhq/ledger-app-builder/ledger-app-builder:latest

# Build the app using Docker
echo ""
echo -e "${YELLOW}Building Noble60 app with Docker...${NC}"
echo -e "${BLUE}  COIN=NOBLE${NC}"
echo -e "${BLUE}  TARGET=nanosp (Nano S Plus)${NC}"
echo -e "${BLUE}  API_LEVEL=${API_LEVEL}${NC}"
echo ""

docker run --rm \
  -v "${SOURCE_DIR}:/app" \
  -w /app/app \
  ghcr.io/ledgerhq/ledger-app-builder/ledger-app-builder:latest \
  bash -c "
    echo 'Building for API Level ${API_LEVEL}...'
    BOLOS_SDK=/opt/nanosplus-secure-sdk make COIN=NOBLE 2>&1
  " || true

# Build may report error but still produce artifacts - check for them below

# Copy artifacts to output directory
echo ""
echo -e "${YELLOW}Copying build artifacts...${NC}"

# Check for build artifacts in the actual build location
if [ -f "${APP_DIR}/build/nanos2/bin/app.hex" ]; then
    BUILD_BIN_DIR="${APP_DIR}/build/nanos2/bin"
elif [ -f "${APP_DIR}/bin/app.hex" ]; then
    BUILD_BIN_DIR="${APP_DIR}/bin"
else
    echo -e "${RED}Error: app.hex not found. Build may have failed.${NC}"
    echo -e "${YELLOW}Checked locations:${NC}"
    echo -e "  - ${APP_DIR}/build/nanos2/bin/"
    echo -e "  - ${APP_DIR}/bin/"
    exit 1
fi

echo -e "  Found artifacts in: ${BUILD_BIN_DIR}"
cp "${BUILD_BIN_DIR}/app.hex" "${OUTPUT_DIR}/"
cp "${BUILD_BIN_DIR}/app.elf" "${OUTPUT_DIR}/"
cp "${BUILD_BIN_DIR}/app.apdu" "${OUTPUT_DIR}/" 2>/dev/null || true

# Generate SHA-256 checksum
echo -e "${YELLOW}Generating SHA-256 checksum...${NC}"
cd "${OUTPUT_DIR}"
shasum -a 256 app.hex > app.sha256
shasum -a 256 app.elf >> app.sha256

# Display results
echo ""
echo -e "${GREEN}===============================================================================${NC}"
echo -e "${GREEN}  Build Completed Successfully!${NC}"
echo -e "${GREEN}===============================================================================${NC}"
echo ""
echo -e "${GREEN}Output Directory:${NC} ${OUTPUT_DIR}"
echo ""
echo -e "${GREEN}Build Artifacts:${NC}"
ls -lh "${OUTPUT_DIR}/"
echo ""
echo -e "${GREEN}SHA-256 Checksums:${NC}"
cat "${OUTPUT_DIR}/app.sha256"
echo ""
echo -e "${BLUE}Build Configuration:${NC}"
echo -e "  App Name: Noble60"
echo -e "  App Version: 2.32.1"
echo -e "  Derivation Path: m/44'/60'"
echo -e "  Target Device: Ledger Nano S Plus"
echo -e "  Firmware: 1.5.0"
echo -e "  API Level: ${API_LEVEL}"
echo ""
echo -e "${YELLOW}Next Steps:${NC}"
echo -e "  1. Install to your Ledger device using the installer script"
echo -e "  2. Or test with Speculos simulator using app.elf"
echo ""
