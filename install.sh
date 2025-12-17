#!/bin/bash
#===============================================================================
# Noble60 App Installer - Universal Version with Auto-Detection
#===============================================================================
# This script detects your Ledger device and installs the appropriate version
# Supports both API Level 22 (firmware 1.3.x) and API Level 25 (firmware 1.5.0)
#
# Usage: ./install.sh [--delete]
#   --delete: Delete existing app before installing
#===============================================================================

set -e

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

DELETE_FIRST=false
if [ "$1" = "--delete" ]; then
    DELETE_FIRST=true
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ""
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║        Noble60 App Installer - Universal Version               ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Step 1: Check device connection
echo -e "${CYAN}[Step 1/4] Checking Ledger device connection...${NC}"
echo ""

DEVICE_INFO=$(python3 "${SCRIPT_DIR}/get_device_info.py" 2>&1)
DEVICE_STATUS=$(echo "$DEVICE_INFO" | python3 -c "import sys, json; print(json.load(sys.stdin).get('status', 'error'))")

if [ "$DEVICE_STATUS" != "connected" ]; then
    echo -e "${RED}❌ Device not found or not accessible${NC}"
    echo ""
    echo -e "${YELLOW}Please ensure:${NC}"
    echo "  1. 🔌 Ledger is connected via USB"
    echo "  2. 🔓 Device is unlocked (PIN entered)"
    echo "  3. 📺 Device is on main screen"
    echo "  4. ❌ Ledger Live is closed"
    echo ""
    exit 1
fi

echo -e "${GREEN}✅ Device connected successfully${NC}"
echo ""

# Step 2: Determine firmware version / API level
echo -e "${CYAN}[Step 2/4] Detecting firmware version...${NC}"
echo ""

# Try to auto-detect firmware version
FIRMWARE_CHECK=$(python3 "${SCRIPT_DIR}/check_firmware.py" 2>&1)
FIRMWARE_STATUS=$(echo "$FIRMWARE_CHECK" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('status', 'error'))" 2>/dev/null || echo "error")

DETECTED_API="unknown"
FIRMWARE_VERSION="unknown"

if [ "$FIRMWARE_STATUS" = "success" ]; then
    DETECTED_API=$(echo "$FIRMWARE_CHECK" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('api_level', 'unknown'))" 2>/dev/null || echo "unknown")
    FIRMWARE_VERSION=$(echo "$FIRMWARE_CHECK" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('firmware_version', 'unknown'))" 2>/dev/null || echo "unknown")

    echo -e "${GREEN}✅ Auto-detected firmware: ${FIRMWARE_VERSION}${NC}"

    if [ "$DETECTED_API" != "unknown" ]; then
        echo -e "${GREEN}✅ Recommended API Level: ${DETECTED_API}${NC}"
    fi
    echo ""
else
    echo -e "${YELLOW}⚠️  Could not auto-detect firmware version${NC}"
    echo ""
    echo -e "${YELLOW}Please check your Ledger firmware version manually:${NC}"
    echo ""
    echo "  On your Ledger device:"
    echo "  1. Press both buttons to access Settings"
    echo "  2. Navigate to 'Device' or 'About'"
    echo "  3. Check 'Firmware version'"
    echo ""
fi

echo -e "${BLUE}Available API Levels:${NC}"
echo -e "  ${CYAN}22${NC} - For firmware 1.3.1 or 1.3.2"
echo -e "  ${CYAN}25${NC} - For firmware 1.5.0 or newer"
echo ""

if [ "$DETECTED_API" != "unknown" ]; then
    read -p "Which API level to use? (22/25) [Recommended: ${DETECTED_API}]: " API_LEVEL
    # Use recommended if user just presses Enter
    if [ -z "$API_LEVEL" ]; then
        API_LEVEL="$DETECTED_API"
        echo -e "${GREEN}Using recommended: ${API_LEVEL}${NC}"
    fi
else
    read -p "Which API level should I use? (22/25): " API_LEVEL
fi

# Validate input
while [ "$API_LEVEL" != "22" ] && [ "$API_LEVEL" != "25" ]; do
    echo -e "${RED}Invalid input. Please enter 22 or 25${NC}"
    read -p "Which API level? (22/25): " API_LEVEL
done

echo ""

# Verify API level matches detected firmware
if [ "$DETECTED_API" != "unknown" ] && [ "$DETECTED_API" != "$API_LEVEL" ]; then
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${RED}⚠️  WARNING: API Level Mismatch${NC}"
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    echo -e "${YELLOW}Your device firmware:  ${CYAN}${FIRMWARE_VERSION}${YELLOW} (requires API ${DETECTED_API})${NC}"
    echo -e "${YELLOW}Your selection:        ${CYAN}API Level ${API_LEVEL}${NC}"
    echo ""
    echo -e "${RED}⚠️  Installing wrong API level will FAIL!${NC}"
    echo ""
    read -p "Are you SURE you want to continue? (yes/no): " confirm_mismatch
    echo ""

    if [[ "$confirm_mismatch" != "yes" ]]; then
        echo -e "${YELLOW}Installation cancelled. Please select API Level ${DETECTED_API}${NC}"
        echo ""
        exit 1
    fi

    echo -e "${YELLOW}⚠️  Proceeding at your own risk...${NC}"
    echo ""
fi

# Set configuration based on API level
APPNAME="Noble60"
APPVERSION="2.32.1"
APPPATH="44'/60'"
TARGET_ID="0x33100004"

if [ "$API_LEVEL" = "22" ]; then
    TARGET_VERSION="1.3.1"
    FIRMWARE_DESC="1.3.1/1.3.2"
elif [ "$API_LEVEL" = "25" ]; then
    TARGET_VERSION="1.5.0"
    FIRMWARE_DESC="1.5.0"
fi

HEX_FILE="${SCRIPT_DIR}/builds/api${API_LEVEL}/app.hex"

echo -e "${GREEN}Selected Configuration:${NC}"
echo -e "  API Level: ${CYAN}${API_LEVEL}${NC}"
echo -e "  Target Firmware: ${CYAN}${FIRMWARE_DESC}${NC}"
echo -e "  Build File: ${CYAN}${HEX_FILE}${NC}"
echo ""

# Step 3: Check if build exists
echo -e "${CYAN}[Step 3/4] Verifying build file...${NC}"
echo ""

if [ ! -f "${HEX_FILE}" ]; then
    echo -e "${RED}❌ Error: Build file not found!${NC}"
    echo -e "${YELLOW}Expected location: ${HEX_FILE}${NC}"
    echo ""
    echo -e "${YELLOW}Please build the app first:${NC}"
    echo -e "  ${CYAN}./build-api${API_LEVEL}.sh${NC}"
    echo ""
    exit 1
fi

FILE_SIZE=$(ls -lh "${HEX_FILE}" | awk '{print $5}')
FILE_DATE=$(ls -l "${HEX_FILE}" | awk '{print $6, $7, $8}')

echo -e "${GREEN}✅ Build file found${NC}"
echo -e "  Size: ${FILE_SIZE}"
echo -e "  Date: ${FILE_DATE}"
echo ""

# Step 4: Installation
echo -e "${CYAN}[Step 4/4] Installing to device...${NC}"
echo ""

echo -e "${YELLOW}Modified Features:${NC}"
echo "  ✅ Flexible BIP44 path support (m/44'/60'/X'/Y/Z)"
echo "  ✅ Expert mode removed (prevents device freeze)"
echo "  ✅ Support for custom address indices"
echo ""

# Security warning
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${RED}⚠️  SECURITY WARNING: Recovery Phrase Backup Required${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${YELLOW}Before proceeding:${NC}"
echo "  ✅ Ensure you have your 24-word recovery phrase backed up"
echo "  ✅ Verify you can read and access your backup"
echo "  ⚠️  Compatibility issues may require device factory reset"
echo ""

read -p "Have you backed up your recovery phrase? (yes/no): " confirm_backup
echo ""

if [[ "$confirm_backup" != "yes" ]]; then
    echo -e "${RED}❌ Installation cancelled${NC}"
    echo -e "${YELLOW}Please backup your recovery phrase first${NC}"
    echo ""
    exit 1
fi

read -p "Ready to install? (yes/no): " confirm_install
echo ""

if [[ "$confirm_install" != "yes" ]]; then
    echo -e "${YELLOW}Installation cancelled by user${NC}"
    echo ""
    exit 0
fi

# Build load command
LOAD_CMD="python3 -m ledgerblue.loadApp"
LOAD_CMD="${LOAD_CMD} --appFlags 0x200"

if [ "$DELETE_FIRST" = true ]; then
    LOAD_CMD="${LOAD_CMD} --delete"
fi

LOAD_CMD="${LOAD_CMD} --targetId ${TARGET_ID}"
LOAD_CMD="${LOAD_CMD} --targetVersion ${TARGET_VERSION}"
LOAD_CMD="${LOAD_CMD} --apiLevel ${API_LEVEL}"
LOAD_CMD="${LOAD_CMD} --fileName \"${HEX_FILE}\""
LOAD_CMD="${LOAD_CMD} --appName \"${APPNAME}\""
LOAD_CMD="${LOAD_CMD} --appVersion ${APPVERSION}"
LOAD_CMD="${LOAD_CMD} --curve secp256k1"
LOAD_CMD="${LOAD_CMD} --path \"${APPPATH}\""
LOAD_CMD="${LOAD_CMD} --path \"44'/1'\""
LOAD_CMD="${LOAD_CMD} --tlv"

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Installing to device...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Execute installation
if eval ${LOAD_CMD}; then
    echo ""
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║            ✅ Installation completed successfully!            ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}Installed Version:${NC}"
    echo "  API Level: ${API_LEVEL}"
    echo "  Firmware: ${FIRMWARE_DESC}"
    echo "  App Version: ${APPVERSION}"
    echo ""
    echo -e "${YELLOW}Next Steps:${NC}"
    echo "  1. Open Noble60 app on your Ledger device"
    echo "  2. Use your wallet/tool to specify custom BIP44 path"
    echo "  3. Example: m/44'/60'/0'/0/16"
    echo ""
    echo -e "${BLUE}Verification:${NC}"
    echo "  • Check device menu - Expert mode should NOT appear"
    echo "  • App should work with custom paths"
    echo ""
else
    echo ""
    echo -e "${RED}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${RED}║                  ❌ Installation failed                        ║${NC}"
    echo -e "${RED}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}Troubleshooting:${NC}"
    echo "  1. Run device check: ${CYAN}./check_device.sh${NC}"
    echo "  2. Ensure device is unlocked and on main screen"
    echo "  3. Close Ledger Live if running"
    echo "  4. Try reconnecting USB cable"
    echo "  5. Check TROUBLESHOOTING.md"
    echo ""
    exit 1
fi
