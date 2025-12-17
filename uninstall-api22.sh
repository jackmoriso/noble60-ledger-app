#!/bin/bash
#===============================================================================
# Noble60 App Deleter - API Level 22 (Firmware 1.3.1/1.3.2)
#===============================================================================
# This script safely deletes the Noble60 app from your Ledger device
# Specifically for API Level 22 / Firmware 1.3.1/1.3.2
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
echo -e "${BLUE}║     Noble60 App Deleter - API Level 22 (FW 1.3.1/1.3.2)       ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Configuration
APPNAME="Noble60"
TARGET_ID="0x33100004"  # Nano S Plus
API_LEVEL="22"

echo -e "${YELLOW}Target Configuration:${NC}"
echo "  App Name: ${APPNAME}"
echo "  API Level: ${API_LEVEL}"
echo "  Target Device: Ledger Nano S Plus"
echo "  Firmware: 1.3.1/1.3.2"
echo ""

echo -e "${YELLOW}⚠️  Before proceeding, please ensure:${NC}"
echo ""
echo "  1. 🔌 Your Ledger device is connected via USB"
echo "  2. 🔓 Your device is UNLOCKED (enter PIN if needed)"
echo "  3. 📺 Your device is on the MAIN SCREEN (not in any app)"
echo "  4. ❌ Ledger Live is CLOSED (if installed)"
echo ""
echo -e "${YELLOW}If Noble60 app is currently open on your device:${NC}"
echo "  → Press both buttons together to exit to main screen"
echo ""
read -p "Is your device ready? (yes/no): " confirm
echo ""

if [[ "$confirm" != "yes" ]]; then
    echo -e "${RED}❌ Cancelled by user${NC}"
    echo ""
    exit 1
fi

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}Attempting to delete ${APPNAME} (API ${API_LEVEL})...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Try to delete with different methods
echo -e "${CYAN}[Method 1] Standard deletion${NC}"
if python3 -m ledgerblue.deleteApp --targetId "$TARGET_ID" --appName "$APPNAME" 2>&1; then
    echo ""
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                  ✅ App deleted successfully!                  ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    exit 0
fi

echo ""
echo -e "${YELLOW}Method 1 failed. Trying Method 2...${NC}"
echo ""

# Method 2: With additional parameters
echo -e "${CYAN}[Method 2] Deletion with extended parameters${NC}"
if python3 -m ledgerblue.deleteApp \
    --targetId "$TARGET_ID" \
    --appName "$APPNAME" \
    --rootPrivateKey "" 2>&1; then
    echo ""
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                  ✅ App deleted successfully!                  ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    exit 0
fi

echo ""
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${RED}❌ Automatic deletion failed${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${YELLOW}Please try these manual methods:${NC}"
echo ""
echo -e "${BLUE}Option 1: Delete from device (Recommended)${NC}"
echo "  1. On your Ledger device, go to Settings (gear icon)"
echo "  2. Navigate to Applications or Apps"
echo "  3. Find Noble60 and select it"
echo "  4. Choose Uninstall/Delete"
echo ""
echo -e "${BLUE}Option 2: Use Ledger Live${NC}"
echo "  1. Open Ledger Live application"
echo "  2. Go to Manager tab"
echo "  3. Connect your device and unlock it"
echo "  4. Find Noble60 in the app list"
echo "  5. Click Uninstall"
echo ""
echo -e "${BLUE}Option 3: Check device state and retry${NC}"
echo "  • Make sure the device is on the main menu"
echo "  • Try disconnecting and reconnecting the USB cable"
echo "  • Close Ledger Live if it's running"
echo "  • Run this script again: ${CYAN}./delete-api22.sh${NC}"
echo ""
echo -e "${BLUE}Option 4: Use universal deleter${NC}"
echo "  • Try the universal deletion script: ${CYAN}./delete.sh${NC}"
echo ""

exit 1
