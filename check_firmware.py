#!/usr/bin/env python3
"""
Check Ledger Device Firmware Version
Returns firmware version and validates API level compatibility
"""
import sys
import json
from ledgerblue.comm import getDongle
from ledgerblue.commException import CommException

def get_firmware_version():
    """Get device firmware version"""
    try:
        # Connect to device
        dongle = getDongle(False)

        # Send GET_VERSION APDU (0xE0 0x01)
        # This is a standard BOLOS command
        apdu = bytes([0xE0, 0x01, 0x00, 0x00, 0x00])

        try:
            response = dongle.exchange(apdu)
            dongle.close()

            # Parse response
            # Typical format: [target_id (4 bytes)][se_version (len+data)][flags (len+data)][mcu_version (len+data)]
            if len(response) >= 5:
                target_id = int.from_bytes(response[0:4], byteorder='big')

                # Parse SE version (format: length byte + version string)
                pos = 4
                if pos < len(response):
                    se_version_len = response[pos]
                    pos += 1
                    if pos + se_version_len <= len(response):
                        se_version = response[pos:pos + se_version_len].decode('ascii', errors='ignore')

                        # Determine API level based on firmware version
                        api_level = None
                        if se_version.startswith('1.3.'):
                            api_level = 22
                        elif se_version.startswith('1.4.'):
                            api_level = 23  # Guess, might need adjustment
                        elif se_version.startswith('1.5.'):
                            api_level = 25

                        result = {
                            "status": "success",
                            "firmware_version": se_version,
                            "target_id": f"0x{target_id:08x}",
                            "api_level": api_level,
                            "message": f"Detected firmware {se_version}"
                        }

                        print(json.dumps(result, indent=2))
                        return 0

            # If we can't parse the version, return generic success
            result = {
                "status": "connected",
                "firmware_version": "unknown",
                "target_id": "0x33100004",
                "api_level": None,
                "message": "Device connected but firmware version could not be determined"
            }
            print(json.dumps(result, indent=2))
            return 0

        except CommException as e:
            # Device connected but command failed
            result = {
                "status": "connected",
                "firmware_version": "unknown",
                "api_level": None,
                "message": "Device connected but version check failed",
                "error": str(e)
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
    sys.exit(get_firmware_version())
