#!/bin/bash
#===============================================================================
# Noble60 App Installer - API Level 22 (Firmware 1.3.1/1.3.2)
#===============================================================================
# This script installs the Noble60 app specifically for firmware 1.3.1/1.3.2
# (the version with our modifications: flexible BIP44 path, no expert mode)
#
# Usage: ./install-api22.sh [--delete]
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

# Configuration
APPNAME="Noble60"
APPVERSION="2.32.1"
APPPATH="44'/60'"
TARGET_ID="0x33100004"  # Nano S Plus
API_LEVEL="22"
TARGET_VERSION="1.3.1"

# Paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HEX_FILE="${SCRIPT_DIR}/builds/api22/app.hex"

echo ""
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     Noble60 App Installer - API Level 22 (FW 1.3.1/1.3.2)     ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}This installer will load the NEWLY BUILT version with:${NC}"
echo -e "  ✅ Flexible BIP44 path support (m/44'/60'/X'/Y/Z)"
echo -e "  ✅ Expert mode removed (prevents device freeze)"
echo -e "  ✅ Support for custom address indices"
echo ""
echo -e "${YELLOW}Build Information:${NC}"
echo -e "  App Name: ${APPNAME}"
echo -e "  App Version: ${APPVERSION}"
echo -e "  API Level: ${API_LEVEL}"
echo -e "  Target Firmware: ${TARGET_VERSION} (1.3.1/1.3.2)"
echo -e "  Target Device: Ledger Nano S Plus"
echo ""

# Check if hex file exists
if [ ! -f "${HEX_FILE}" ]; then
    echo -e "${RED}❌ Error: Build file not found: ${HEX_FILE}${NC}"
    echo -e "${YELLOW}Please run the build script first:${NC}"
    echo -e "  ${CYAN}./build-api22.sh${NC}"
    echo ""
    exit 1
fi

echo -e "${GREEN}✅ Found build file: ${HEX_FILE}${NC}"
FILE_SIZE=$(ls -lh "${HEX_FILE}" | awk '{print $5}')
FILE_DATE=$(ls -l "${HEX_FILE}" | awk '{print $6, $7, $8}')
echo -e "  Size: ${FILE_SIZE}"
echo -e "  Date: ${FILE_DATE}"
echo ""

# Security warning
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${RED}⚠️  SECURITY WARNING: Recovery Phrase Backup Required${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${YELLOW}Before installing ANY application on your Ledger device:${NC}"
echo ""
echo "  ✅ Ensure you have securely written down your 24-word"
echo "     recovery phrase (mnemonic)"
echo "  ✅ Verify you can read and access your backup"
echo "  ✅ Store it in a safe place, separate from your device"
echo ""
echo -e "${RED}⚠️  WARNING: Compatibility issues may cause device reset,${NC}"
echo -e "${RED}   potentially requiring factory restore.${NC}"
echo ""
echo -e "${RED}❌ If you lose your recovery phrase and your device fails,${NC}"
echo -e "${RED}   your funds will be PERMANENTLY LOST.${NC}"
echo ""
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Device checklist
echo -e "${YELLOW}Before proceeding, ensure:${NC}"
echo ""
echo "  ✅ Your Ledger device is connected via USB"
echo "  ✅ Your device is UNLOCKED (PIN entered)"
echo "  ✅ Your device is on the MAIN SCREEN (not in any app)"
echo "  ✅ Ledger Live is CLOSED (if installed)"
echo "  ✅ No other programs are using the device"
echo ""
echo -e "${YELLOW}Optional: Run device check first:${NC}"
echo -e "  ${CYAN}./check_device.sh${NC}"
echo ""

# Confirm backup
read -p "Have you backed up your recovery phrase? (yes/no): " confirm_backup
echo ""

if [[ "$confirm_backup" != "yes" ]]; then
    echo -e "${RED}❌ Installation cancelled.${NC}"
    echo -e "${YELLOW}Please backup your recovery phrase first.${NC}"
    echo "Refer to: https://support.ledger.com"
    exit 1
fi

# Confirm device ready
read -p "Is your device connected and ready? (yes/no): " confirm_device
echo ""

if [[ "$confirm_device" != "yes" ]]; then
    echo -e "${YELLOW}❌ Installation cancelled.${NC}"
    echo -e "${YELLOW}Please prepare your device and try again.${NC}"
    exit 1
fi

# Check firmware version compatibility
echo -e "${CYAN}🔍 Checking device firmware version...${NC}"
echo ""

FIRMWARE_CHECK=$(python3 "${SCRIPT_DIR}/check_firmware.py" 2>&1)
FIRMWARE_STATUS=$(echo "$FIRMWARE_CHECK" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('status', 'error'))" 2>/dev/null || echo "error")

if [ "$FIRMWARE_STATUS" = "success" ]; then
    DETECTED_API=$(echo "$FIRMWARE_CHECK" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('api_level', 'unknown'))" 2>/dev/null || echo "unknown")
    FIRMWARE_VERSION=$(echo "$FIRMWARE_CHECK" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('firmware_version', 'unknown'))" 2>/dev/null || echo "unknown")

    echo -e "${GREEN}✅ Detected firmware: ${FIRMWARE_VERSION}${NC}"

    if [ "$DETECTED_API" != "22" ] && [ "$DETECTED_API" != "unknown" ]; then
        echo ""
        echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${RED}❌ FIRMWARE VERSION MISMATCH${NC}"
        echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo ""
        echo -e "${YELLOW}Your device firmware is NOT compatible with API Level 22!${NC}"
        echo ""
        echo -e "  Device Firmware: ${CYAN}${FIRMWARE_VERSION}${NC} (requires API Level ${DETECTED_API})"
        echo -e "  This Installer:  ${CYAN}API Level 22${NC} (for firmware 1.3.1/1.3.2)"
        echo ""
        echo -e "${RED}⚠️  Installing incompatible version will FAIL!${NC}"
        echo ""
        echo -e "${YELLOW}Recommended Actions:${NC}"
        echo ""

        if [ "$DETECTED_API" = "25" ]; then
            echo -e "  ${GREEN}Option 1: Build and install API 25 version (Recommended)${NC}"
            echo -e "    ${CYAN}./build-api25.sh${NC}"
            echo -e "    ${CYAN}./install.sh${NC}   # Select API 25"
            echo ""
            echo -e "  ${YELLOW}Option 2: Use universal installer${NC}"
            echo -e "    ${CYAN}./build.sh${NC}     # Select 25"
            echo -e "    ${CYAN}./install.sh${NC}   # Select 25"
        else
            echo -e "  ${GREEN}Option: Use universal installer${NC}"
            echo -e "    ${CYAN}./build.sh${NC}     # Select correct API level"
            echo -e "    ${CYAN}./install.sh${NC}   # Select correct API level"
        fi

        echo ""
        echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo ""
        exit 1
    fi

    echo -e "${GREEN}✅ Firmware compatible with API Level 22${NC}"
    echo ""
elif [ "$FIRMWARE_STATUS" = "connected" ]; then
    echo -e "${YELLOW}⚠️  Could not detect firmware version${NC}"
    echo -e "${YELLOW}   Proceeding with installation (at your own risk)${NC}"
    echo ""
else
    echo -e "${RED}❌ Could not connect to device${NC}"
    echo -e "${YELLOW}Please ensure device is connected and unlocked${NC}"
    echo ""
    exit 1
fi

# Start installation
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ Starting installation...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

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

echo -e "${YELLOW}Installation command:${NC}"
echo -e "${CYAN}${LOAD_CMD}${NC}"
echo ""
echo -e "${YELLOW}Installing to device...${NC}"
echo ""

# Execute installation
if eval ${LOAD_CMD}; then
    echo ""
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║            ✅ Installation completed successfully!            ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${GREEN}Modified Features:${NC}"
    echo "  ✅ Supports flexible BIP44 paths: m/44'/60'/X'/Y/Z"
    echo "  ✅ Can use m/44'/60'/0'/0/16 (your requested path)"
    echo "  ✅ Expert mode removed (no freeze risk)"
    echo ""
    echo -e "${YELLOW}Next Steps:${NC}"
    echo "  1. The app should now appear on your Ledger device"
    echo "  2. Open Noble60 app on your device"
    echo "  3. Use your wallet/tool to specify custom BIP44 path"
    echo "  4. Example: m/44'/60'/0'/0/16"
    echo ""
    echo -e "${BLUE}Verification:${NC}"
    echo "  • Check device menu - Expert mode should NOT appear"
    echo "  • App should work normally with custom paths"
    echo ""
else
    echo ""
    echo -e "${RED}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${RED}║                  ❌ Installation failed                        ║${NC}"
    echo -e "${RED}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}Troubleshooting:${NC}"
    echo ""
    echo "1. Check device connection:"
    echo -e "   ${CYAN}./check_device.sh${NC}"
    echo ""
    echo "2. Ensure device is unlocked and on main screen"
    echo ""
    echo "3. Close Ledger Live if running"
    echo ""
    echo "4. Try reconnecting USB cable"
    echo ""
    echo "5. Check TROUBLESHOOTING.md for more solutions"
    echo ""
    exit 1
fi
