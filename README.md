# Noble60 Ledger App

**Ledger application for Noble blockchain with BIP-60 (Ethereum derivation path) support**

[![GitHub](https://img.shields.io/badge/GitHub-initia--labs%2Fnoble60--ledger--app-blue)](https://github.com/initia-labs/noble60-ledger-app)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

## Overview

Noble60 is a specialized Ledger application for the Noble blockchain that uses **BIP-60 (m/44'/60')** derivation path instead of the standard Cosmos **BIP-118 (m/44'/118')** path. This enables Noble users to manage their assets using Ledger hardware wallets with addresses derived from the Ethereum-compatible path.

**Key Features:**
- ✅ BIP-60 (m/44'/60') derivation path support
- ✅ Compatible with Ledger Nano S Plus
- ✅ Supports firmware 1.3.1, 1.3.2, and 1.5.0
- ✅ Docker-based build system (no local SDK required)
- ✅ Pre-built releases available for convenience
- ✅ Production-ready source code based on audited Zondax ledger-cosmos

## Quick Start

### Option 1: Use Pre-built Releases (Recommended)

Download pre-built binaries from the [releases](releases/) directory:

- **[v2.32.1-api25](releases/v2.32.1-api25/)** - For firmware 1.5.0
- **[v2.32.1-api22](releases/v2.32.1-api22/)** - For firmware 1.3.1/1.3.2

See [Installation Guide](#installation) for details.

### Option 2: Build from Source

```bash
# Clone the repository
git clone https://github.com/initia-labs/noble60-ledger-app
cd noble60-ledger-app

# Build for your firmware version
./build-api25.sh  # For firmware 1.5.0
# or
./build-api22.sh  # For firmware 1.3.1/1.3.2
```

## App Specifications

| Property | Value |
|----------|-------|
| **App Name** | Noble60 |
| **Version** | 2.32.1 |
| **Derivation Path** | m/44'/60' (BIP-60, Ethereum-compatible) |
| **Target Device** | Ledger Nano S Plus |
| **Supported Firmware** | 1.3.1, 1.3.2, 1.5.0 |
| **Curve** | secp256k1 |
| **Address Prefix** | noble1 |

## Why Noble60?

### The Problem

Noble blockchain uses the **BIP-60 (Ethereum) derivation path** for address generation, but the standard Cosmos Ledger app only supports **BIP-118** paths. This means Noble users cannot sign transactions for their addresses using the standard Cosmos app.

### Our Solution

Noble60 is built on top of the proven, audited [Zondax ledger-cosmos](https://github.com/Zondax/ledger-cosmos) codebase with **only two minimal modifications**:

1. **Changed app name**: From "Cosmos" to "Noble60"
2. **Changed derivation path**: From `m/44'/118'` to `m/44'/60'`

By reusing Zondax's battle-tested code with these targeted changes, we provide a secure and reliable solution for Noble users.

## Requirements

### For Using Pre-built Releases

- Ledger Nano S Plus with firmware 1.3.1, 1.3.2, or 1.5.0
- Python 3.7 or higher
- `ledgerblue` Python package: `pip3 install ledgerblue`

### For Building from Source

- Docker installed and running
- At least 4GB free disk space
- Internet connection

Verify Docker installation:
```bash
docker --version
docker info
```

## Installation

### Step 1: Check Your Firmware Version

1. Open Ledger Live
2. Go to **Manager** → Your device
3. Check your firmware version

### Step 2: Choose the Correct Release

- **Firmware 1.5.0** → Use [v2.32.1-api25](releases/v2.32.1-api25/)
- **Firmware 1.3.1 or 1.3.2** → Use [v2.32.1-api22](releases/v2.32.1-api22/)

### Step 3: Verify Checksums

```bash
cd releases/v2.32.1-api25  # or v2.32.1-api22
shasum -a 256 -c app.sha256
```

Expected output:
```
app.hex: OK
app.elf: OK
```

### Step 4: Install the App

**For Firmware 1.5.0 (API Level 25):**

```bash
python3 -m ledgerblue.loadApp \
  --targetId 0x33100004 \
  --targetVersion="1.5.0" \
  --apiLevel 25 \
  --fileName releases/v2.32.1-api25/app.hex \
  --appName "Noble60" \
  --appVersion "2.32.1" \
  --appFlags 0x200 \
  --path "44'/60'" \
  --curve secp256k1 \
  --tlv
```

**For Firmware 1.3.1/1.3.2 (API Level 22):**

```bash
python3 -m ledgerblue.loadApp \
  --targetId 0x33100004 \
  --targetVersion="1.3.1" \
  --apiLevel 22 \
  --fileName releases/v2.32.1-api22/app.hex \
  --appName "Noble60" \
  --appVersion "2.32.1" \
  --appFlags 0x200 \
  --path "44'/60'" \
  --curve secp256k1 \
  --tlv
```

**Important:**
- Make sure your Ledger device is **unlocked** and on the home screen
- The device must be connected via USB
- Follow the on-screen prompts on your Ledger device

## Building from Source

### Repository Structure

```
noble60-ledger-app/
├── ledger-cosmos/          # Source code (Zondax ledger-cosmos with Noble mods)
│   ├── app/
│   │   ├── Makefile        # Modified to support COIN=NOBLE
│   │   └── src/            # Application source code
│   └── deps/               # Dependencies
├── releases/               # Pre-built binaries
│   ├── v2.32.1-api25/     # For firmware 1.5.0
│   └── v2.32.1-api22/     # For firmware 1.3.1/1.3.2
├── build-api22.sh          # Build script for API 22
├── build-api25.sh          # Build script for API 25
└── README.md
```

### Build Scripts

#### Building for Firmware 1.5.0 (API Level 25)

```bash
./build-api25.sh
```

Output files in `builds/api25/`:
- `app.hex` (149KB) - Binary for physical Ledger device
- `app.elf` (148KB) - Binary for Speculos simulator
- `app.sha256` - SHA-256 checksums

#### Building for Firmware 1.3.1/1.3.2 (API Level 22)

```bash
./build-api22.sh
```

Output files in `builds/api22/`:
- `app.hex` (149KB) - Binary for physical Ledger device
- `app.elf` (148KB) - Binary for Speculos simulator
- `app.sha256` - SHA-256 checksums

### How the Build Works

1. **Git Repository Initialization**
   - Automatically initializes a git repository in `ledger-cosmos/` if not present
   - **Why:** Ledger SDK requires git to generate proper hex files
   - Without git: Only 210-byte TLV metadata is generated
   - With git: Full 149KB Intel HEX format with machine code

2. **Docker Build**
   - Uses official Ledger SDK Docker image
   - Mounts source code into the container
   - Runs `make COIN=NOBLE` with the appropriate SDK version

3. **Artifact Generation**
   - Copies compiled binaries to `builds/` directory
   - Generates SHA-256 checksums for verification

### Build Configuration

The builds use these parameters:

| Parameter | Value |
|-----------|-------|
| **COIN** | NOBLE |
| **APPNAME** | Noble60 |
| **APPPATH** | 44'/60' |
| **TARGET** | nanosp (Nano S Plus) |
| **BOLOS_SDK** | /opt/nanosplus-secure-sdk |
| **Docker Image** | ghcr.io/ledgerhq/ledger-app-builder:latest |

## Testing with Speculos Simulator

Test the app without a physical device using the Speculos simulator:

```bash
docker run --rm -it \
  -v "$(pwd)/builds/api25:/app" \
  -p 6699:6699 -p 6690:6690 -p 6601:5000 \
  ghcr.io/ledgerhq/speculos:latest \
  --model nanosp \
  --apdu-port 6699 \
  --vnc-port 6690 \
  --display headless \
  /app/app.elf
```

Access the simulator at http://localhost:6601

## Modifications from Zondax Source

This app is based on [Zondax ledger-cosmos](https://github.com/Zondax/ledger-cosmos) v2.32.1 with minimal modifications:

### Changes to `ledger-cosmos/app/Makefile`

**Lines 64-67** (added Noble configuration):
```makefile
else ifeq ($(COIN),NOBLE)
# Noble BIP-60 configuration - Access BIP-60 Noble addresses
APPNAME = "Noble60"
APPPATH = "44'/60'"
```

This allows building with `COIN=NOBLE` to use the BIP-60 derivation path instead of BIP-118.

**That's it!** No other source code changes were made, ensuring maximum compatibility and security through code reuse.

## Troubleshooting

### Build Issues

**Docker not running:**
```
Error: Docker is not running
```
→ Start Docker Desktop (macOS/Windows) or `sudo systemctl start docker` (Linux)

**Build produces only 210-byte hex file:**
```
Error: app.hex is too small (210 bytes)
```
→ This is fixed automatically by the build scripts (git repository initialization)

**Source directory not found:**
```
Error: Source directory not found
```
→ Run the build script from the repository root directory

### Installation Issues

**Device not detected:**
→ Make sure your Ledger is unlocked and on the home screen

**Permission denied:**
→ On Linux, you may need to add udev rules for Ledger devices

**Wrong API level:**
→ Double-check your firmware version matches the build you're installing

## Security Considerations

1. ✅ **Always backup your recovery phrase** before installing any Ledger app
2. ✅ **Verify checksums** of pre-built binaries before installation
3. ✅ **Test with simulator first** if building from source
4. ✅ **Only install on devices you own** and trust
5. ✅ **Keep firmware updated** via Ledger Live

## Development

### Running Tests

```bash
cd ledger-cosmos/app
make test
```

### Modifying the Build

1. Edit source files in `ledger-cosmos/app/src/`
2. Modify build configuration in `ledger-cosmos/app/Makefile`
3. Update build scripts (`build-api22.sh` or `build-api25.sh`) if needed
4. Test your changes with the simulator
5. Build and verify checksums

## Resources

### Official Links
- **Noble Blockchain**: https://nobleassets.xyz
- **Noble Documentation**: https://docs.initia.xyz
- **Zondax ledger-cosmos**: https://github.com/Zondax/ledger-cosmos
- **Ledger Developer Docs**: https://developers.ledger.com

### Support
- GitHub Issues: https://github.com/initia-labs/noble60-ledger-app/issues
- Noble Community: [Join Noble Discord](https://discord.gg/noble)

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

The underlying [Zondax ledger-cosmos](https://github.com/Zondax/ledger-cosmos) source code is also licensed under Apache License 2.0.

## Disclaimer

This software is provided "as-is" without warranty of any kind, express or implied. Always:
- Backup your recovery phrase
- Test with small amounts first
- Verify you understand the risks of using Ledger apps

The developers are not responsible for any loss of funds. Use at your own risk.

---

**App Version:** 2.32.1
**Based on:** Zondax ledger-cosmos v2.32.1
**Last Updated:** December 2024
**Target Device:** Ledger Nano S Plus
**Supported Firmware:** 1.3.1, 1.3.2, 1.5.0
