# Noble60 Ledger App - Pre-built Releases

This directory contains pre-built binaries for the Noble60 Ledger app.

## Available Releases

### v2.32.1-api25 (Latest)
**Directory:** `v2.32.1-api25/`
**Target Device:** Ledger Nano S Plus
**Firmware Version:** 1.5.0
**API Level:** 25
**App Version:** 2.32.1

**Files:**
- `app.hex` - Binary for physical Ledger installation (149KB)
- `app.elf` - Binary for Speculos simulator (148KB)
- `app.sha256` - SHA-256 checksums for verification

**SHA-256 Checksums:**
```
095ede24012e99bad6bfdcbc44590395b7b1eeddbb8f7ae05523e132b227f0dc  app.hex
51ab67325865f0d15159e6a2867a72ffc16063cc5c3280d6ecce7aa32249333b  app.elf
```

**Installation:**
```bash
# Verify checksum
cd releases/v2.32.1-api25
shasum -a 256 -c app.sha256

# Install using ledgerctl (recommended)
python3 -m pip install ledgerwallet
python3 -m ledgerblue.loadApp \
  --targetId 0x33100004 \
  --targetVersion="1.5.0" \
  --apiLevel 25 \
  --fileName app.hex \
  --appName "Noble60" \
  --appVersion "2.32.1" \
  --appFlags 0x200 \
  --path "44'/60'" \
  --curve secp256k1 \
  --tlv
```

## Configuration
- **App Name:** Noble60
- **Derivation Path:** m/44'/60'
- **Supported Curves:** secp256k1
- **Target:** Ledger Nano S Plus (nanos2)

## Why Pre-built Binaries?
Building from source requires complex SDK dependencies and specific Docker configurations. These pre-built binaries are provided for convenience and have been verified to work correctly.

## Verification
Always verify checksums before installation:
```bash
shasum -a 256 -c app.sha256
```
