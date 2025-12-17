#!/bin/bash
#===============================================================================
# Ledger Device Connection Checker
#===============================================================================
# This script helps diagnose Ledger device connection issues
#===============================================================================

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}  Ledger Device Connection Diagnostic Tool${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

ISSUES_FOUND=0

# Check 1: USB devices
echo -e "${CYAN}[1/6] Checking USB devices...${NC}"
if system_profiler SPUSBDataType | grep -i "ledger" > /dev/null 2>&1; then
    echo -e "${GREEN}✅ Ledger device detected in USB devices${NC}"
    echo ""
    system_profiler SPUSBDataType | grep -A 10 -i "ledger" | head -15
    echo ""
else
    echo -e "${RED}❌ No Ledger device found in USB devices${NC}"
    echo -e "${YELLOW}   → Please ensure device is connected via USB cable${NC}"
    ISSUES_FOUND=$((ISSUES_FOUND + 1))
fi
echo ""

# Check 2: HID devices
echo -e "${CYAN}[2/6] Checking HID devices...${NC}"
if ls /dev/hidraw* > /dev/null 2>&1 || ls /dev/usb/hiddev* > /dev/null 2>&1; then
    echo -e "${GREEN}✅ HID devices found:${NC}"
    ls -l /dev/hidraw* 2>/dev/null || ls -l /dev/usb/hiddev* 2>/dev/null || echo "  (macOS doesn't show HID device files)"
else
    echo -e "${YELLOW}⚠️  No HID device files (normal on macOS)${NC}"
fi
echo ""

# Check 3: Python and ledgerblue
echo -e "${CYAN}[3/6] Checking Python and ledgerblue...${NC}"
if command -v python3 > /dev/null 2>&1; then
    PYTHON_VERSION=$(python3 --version 2>&1)
    echo -e "${GREEN}✅ Python found: ${PYTHON_VERSION}${NC}"

    if python3 -c "import ledgerblue" 2>/dev/null; then
        LEDGERBLUE_VERSION=$(python3 -c "import ledgerblue; print(ledgerblue.__version__)" 2>/dev/null || echo "unknown")
        echo -e "${GREEN}✅ ledgerblue module installed (version: ${LEDGERBLUE_VERSION})${NC}"
    else
        echo -e "${RED}❌ ledgerblue module not found${NC}"
        echo -e "${YELLOW}   → Run: pip3 install ledgerblue${NC}"
        ISSUES_FOUND=$((ISSUES_FOUND + 1))
    fi
else
    echo -e "${RED}❌ Python 3 not found${NC}"
    ISSUES_FOUND=$((ISSUES_FOUND + 1))
fi
echo ""

# Check 4: Try to connect with Python
echo -e "${CYAN}[4/6] Attempting Python connection to device...${NC}"
python3 << 'EOF'
import sys
try:
    from ledgerblue.comm import getDongle
    try:
        dongle = getDongle(False)
        print("\033[0;32m✅ Successfully connected to Ledger device!\033[0m")
        dongle.close()
        sys.exit(0)
    except Exception as e:
        print(f"\033[0;31m❌ Cannot connect to device: {e}\033[0m")
        sys.exit(1)
except ImportError:
    print("\033[0;31m❌ ledgerblue module not installed\033[0m")
    sys.exit(2)
EOF

CONNECT_RESULT=$?
if [ $CONNECT_RESULT -eq 0 ]; then
    echo -e "${GREEN}   Device is ready for app installation!${NC}"
elif [ $CONNECT_RESULT -eq 1 ]; then
    echo -e "${YELLOW}   → Device detected but cannot establish connection${NC}"
    ISSUES_FOUND=$((ISSUES_FOUND + 1))
else
    ISSUES_FOUND=$((ISSUES_FOUND + 1))
fi
echo ""

# Check 5: Running processes that might block device
echo -e "${CYAN}[5/6] Checking for processes using the device...${NC}"
if pgrep -f "Ledger Live" > /dev/null 2>&1; then
    echo -e "${YELLOW}⚠️  Ledger Live is running${NC}"
    echo -e "${YELLOW}   → Close Ledger Live and try again${NC}"
    ISSUES_FOUND=$((ISSUES_FOUND + 1))
else
    echo -e "${GREEN}✅ Ledger Live is not running${NC}"
fi

if pgrep -f "ledgerblue" > /dev/null 2>&1; then
    echo -e "${YELLOW}⚠️  Another ledgerblue process is running${NC}"
    echo -e "${YELLOW}   → Wait for other operations to complete${NC}"
    ISSUES_FOUND=$((ISSUES_FOUND + 1))
else
    echo -e "${GREEN}✅ No conflicting ledgerblue processes${NC}"
fi
echo ""

# Check 6: Device state checklist
echo -e "${CYAN}[6/6] Device State Checklist:${NC}"
echo ""
echo -e "${YELLOW}Please verify on your Ledger device:${NC}"
echo ""
echo "  □ Device is powered on"
echo "  □ Device is unlocked (PIN entered)"
echo "  □ Device is on the MAIN SCREEN (not inside any app)"
echo "  □ USB cable is properly connected"
echo "  □ If using USB hub, try direct connection"
echo ""

# Summary
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
if [ $ISSUES_FOUND -eq 0 ]; then
    echo -e "${GREEN}✅ All checks passed! Device should be ready.${NC}"
    echo ""
    echo -e "${GREEN}You can now try installing the app:${NC}"
    echo -e "  ${CYAN}./installer_api25.sh load${NC}"
else
    echo -e "${YELLOW}⚠️  Found ${ISSUES_FOUND} issue(s) that may prevent connection${NC}"
    echo ""
    echo -e "${YELLOW}Common Solutions:${NC}"
    echo ""
    echo -e "${CYAN}1. Close Ledger Live:${NC}"
    echo "   • Quit Ledger Live completely"
    echo "   • Check Activity Monitor for any Ledger processes"
    echo ""
    echo -e "${CYAN}2. Reset device connection:${NC}"
    echo "   • Unplug the USB cable"
    echo "   • Wait 5 seconds"
    echo "   • Plug it back in"
    echo "   • Unlock the device (enter PIN)"
    echo "   • Ensure device is on main screen"
    echo ""
    echo -e "${CYAN}3. Use different USB port/cable:${NC}"
    echo "   • Try a different USB port on your Mac"
    echo "   • Try a different USB cable if possible"
    echo "   • Avoid USB hubs - connect directly to Mac"
    echo ""
    echo -e "${CYAN}4. Restart everything:${NC}"
    echo "   • Close all Ledger-related apps"
    echo "   • Unplug Ledger device"
    echo "   • Restart Terminal"
    echo "   • Plug in device and unlock"
    echo ""
    echo -e "${CYAN}5. Install/reinstall ledgerblue:${NC}"
    echo "   pip3 install --upgrade ledgerblue"
    echo ""
fi
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
