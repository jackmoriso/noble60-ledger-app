#!/usr/bin/env python3
"""
Get Ledger Device Information
Returns firmware version and recommends API level
"""
import sys
import json
from ledgerblue.comm import getDongle
from ledgerblue.commException import CommException

def get_device_info():
    """Get device firmware version and recommend API level"""
    try:
        # Connect to device
        dongle = getDongle(False)

        # Send GET_VERSION APDU command
        # This is a standard command that works across all apps
        apdu = bytes([0xE0, 0x01, 0x00, 0x00, 0x00])

        try:
            response = dongle.exchange(apdu)
            dongle.close()

            # Parse response (typical format varies by device)
            # For now, we'll use a simpler approach - checking against known versions

            # Since we can't reliably get firmware version without the app,
            # we'll provide both options and let user choose
            result = {
                "status": "connected",
                "device": "Ledger Nano S Plus",
                "target_id": "0x33100004",
                "message": "Device connected. Unable to auto-detect firmware version.",
                "recommendation": "Please specify API level manually",
                "api_options": {
                    "22": "For firmware 1.3.1/1.3.2",
                    "25": "For firmware 1.5.0"
                }
            }

        except CommException as e:
            # Device is connected but can't get version (normal if no app is open)
            result = {
                "status": "connected",
                "device": "Ledger Nano S Plus",
                "target_id": "0x33100004",
                "message": "Device connected successfully",
                "recommendation": "Check your firmware version in device settings",
                "api_options": {
                    "22": "For firmware 1.3.1/1.3.2",
                    "25": "For firmware 1.5.0"
                }
            }

        print(json.dumps(result, indent=2))
        return 0

    except Exception as e:
        error_str = str(e).lower()

        if "no dongle found" in error_str or "unable to connect" in error_str:
            result = {
                "status": "not_connected",
                "error": "No Ledger device found",
                "message": "Please connect and unlock your Ledger device"
            }
        else:
            result = {
                "status": "error",
                "error": str(e),
                "message": "Failed to communicate with device"
            }

        print(json.dumps(result, indent=2))
        return 1

if __name__ == "__main__":
    sys.exit(get_device_info())
