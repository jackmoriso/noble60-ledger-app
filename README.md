# Noble60 Ledger App Builder

Build system for the Noble60 Ledger application with BIP-60 derivation path support for Ledger Nano S Plus devices.

## Overview

This repository provides a simplified, Docker-based build system for creating Noble60 Ledger app binaries for two different firmware versions:

- **API Level 22**: For firmware 1.3.1 and 1.3.2
- **API Level 25**: For firmware 1.5.0

**Key Features:**
- Docker-based builds (no local SDK installation required)
- Automated build scripts with safety checks
- Support for multiple firmware versions
- Generates both device binaries (.hex) and simulator binaries (.elf)
- SHA-256 checksums for build integrity verification

## Noble60 App Specifications

| Property | Value |
|----------|-------|
| **App Name** | Noble60 |
| **App Version** | 2.32.1 |
| **Derivation Path** | m/44'/60' (BIP-60) |
| **Target Device** | Ledger Nano S Plus |
| **Supported Firmware** | 1.3.1, 1.3.2, 1.5.0 |
| **Elliptic Curve** | secp256k1 |
| **Chain ID** | noble-1 |
| **Address Prefix** | noble1 |

## Requirements

### System Requirements

- **Docker** installed and running
- **macOS, Linux, or Windows** with Docker support
- At least 4GB of free disk space
- Internet connection (for pulling Docker images)

### Verify Docker Installation

```bash
docker --version
docker info
```

## Repository Structure

```
ledger-noble60-builder/
├── ledger-cosmos/          # Source code (Zondax ledger-cosmos with Noble modifications)
│   └── app/
│       └── Makefile        # Modified to support COIN=NOBLE
├── builds/                 # Build outputs (created during builds)
│   ├── api22/             # Firmware 1.3.1/1.3.2 builds
│   │   ├── app.hex        # Binary for physical Ledger
│   │   ├── app.elf        # Binary for Speculos simulator
│   │   └── app.sha256     # SHA-256 checksums
│   └── api25/             # Firmware 1.5.0 builds
│       ├── app.hex
│       ├── app.elf
│       └── app.sha256
├── build-api22.sh         # Build script for API Level 22
├── build-api25.sh         # Build script for API Level 25
└── README.md              # This file
```

## Quick Start

### 1. Clone This Repository

```bash
git clone <repository-url>
cd ledger-noble60-builder
```

### 2. Choose Your Firmware Version

Check your Ledger firmware version in Ledger Live:

- **Firmware 1.3.1 or 1.3.2**: Use `build-api22.sh`
- **Firmware 1.5.0**: Use `build-api25.sh`

### 3. Run the Build Script

**For Firmware 1.3.1/1.3.2 (API Level 22):**
```bash
./build-api22.sh
```

**For Firmware 1.5.0 (API Level 25):**
```bash
./build-api25.sh
```

### 4. Find Your Binaries

After a successful build, find your binaries in:
- `builds/api22/` for firmware 1.3.1/1.3.2
- `builds/api25/` for firmware 1.5.0

## Build Scripts

### build-api22.sh

Builds the Noble60 app for firmware 1.3.1/1.3.2 using API Level 22.

**Features:**
- Automatic Docker image pulling
- Clean build environment
- Progress output with colors
- Error handling and validation
- SHA-256 checksum generation

**Usage:**
```bash
./build-api22.sh
```

**Output:**
```
builds/api22/
├── app.hex       # 149 KB - Install to physical Ledger
├── app.elf       # 148 KB - Use with Speculos simulator
├── app.apdu      # 111 KB - APDU command sequence
└── app.sha256    # SHA-256 checksums
```

### build-api25.sh

Builds the Noble60 app for firmware 1.5.0 using API Level 25.

**Usage:**
```bash
./build-api25.sh
```

**Output:** Same structure as API 22, in `builds/api25/`

## Using the Built Binaries

### Install to Physical Ledger Device

After building, you can install the app to your Ledger device using `ledgerblue`:

```bash
# Activate Python environment (if you have one)
source ~/ledger-env/bin/activate

# Install the app
python3 -m ledgerblue.loadApp \
  --targetId 0x33100004 \
  --targetVersion="1.5.0" \
  --apiLevel 25 \
  --fileName builds/api25/app.hex \
  --appName "Noble60" \
  --appVersion "2.32.1" \
  --appFlags 0x200 \
  --path "44'/60'" \
  --curve secp256k1 \
  --tlv
```

**Important:**
- Ensure your Ledger is **unlocked** and on the home screen
- The device must be connected via USB
- Backup your recovery phrase before installation

### Test with Speculos Simulator

You can test the app without a physical device using Speculos:

```bash
docker run --rm -it \
  -v "$(pwd)/builds/api22:/app" \
  -p 6699:6699 -p 6690:6690 -p 6601:5000 \
  ghcr.io/ledgerhq/speculos:latest \
  --model nanosp \
  --apdu-port 6699 \
  --vnc-port 6690 \
  --display headless \
  /app/app.elf
```

Then access the simulator at http://localhost:6601

## Build Process Details

### What Happens During Build

1. **Environment Check**
   - Verifies Docker is running
   - Checks source directory exists
   - Creates output directory

2. **Clean Previous Build**
   - Removes old build artifacts
   - Ensures clean build environment

3. **Docker Build**
   - Pulls latest Ledger SDK image
   - Mounts source code into container
   - Runs `make COIN=NOBLE` with appropriate SDK

4. **Artifact Collection**
   - Copies `.hex`, `.elf`, and `.apdu` files
   - Generates SHA-256 checksums
   - Displays build summary

### Build Configuration

The builds use the following configuration:

| Parameter | Value |
|-----------|-------|
| **COIN** | NOBLE |
| **APPNAME** | Noble60 |
| **APPPATH** | 44'/60' |
| **TARGET** | nanosp (Nano S Plus) |
| **BOLOS_SDK** | /opt/nanosplus-secure-sdk |
| **Docker Image** | ghcr.io/ledgerhq/ledger-app-builder/ledger-app-builder:latest |

## Troubleshooting

### Docker Not Running

**Error:**
```
Error: Docker is not running
Please start Docker and try again.
```

**Solution:**
- Start Docker Desktop (macOS/Windows)
- Or start Docker service (Linux): `sudo systemctl start docker`

### Build Failed

**Error:**
```
Error: app.hex not found. Build may have failed.
```

**Solutions:**
1. Check Docker logs for errors
2. Ensure you have enough disk space
3. Try cleaning and rebuilding:
   ```bash
   cd ledger-cosmos/app
   make clean
   cd ../..
   ./build-api22.sh
   ```

### Source Directory Not Found

**Error:**
```
Error: Source directory not found: ./ledger-cosmos
```

**Solution:**
- Ensure you're running the script from the project root
- The `ledger-cosmos` directory should be present
- If missing, re-clone the repository

## Verifying Build Integrity

After building, verify the checksums:

```bash
cd builds/api22  # or api25
shasum -a 256 -c app.sha256
```

Expected output:
```
app.hex: OK
app.elf: OK
```

## Modifications from Original Source

This repository modifies the original Zondax ledger-cosmos source code:

**Changes to `ledger-cosmos/app/Makefile` (lines 60-77):**
```makefile
ifeq ($(COIN),ATOM)
# Main app configuration
APPNAME = "Cosmos"
APPPATH = "44'/118'"
else ifeq ($(COIN),NOBLE)
# Noble BIP-60 configuration
APPNAME = "Noble60"
APPPATH = "44'/60'"
else
$(error "COIN value not supported")
endif
```

This adds support for building with `COIN=NOBLE` to use the BIP-60 derivation path.

## Development

### Modifying the Build

To customize the build:

1. Edit `ledger-cosmos/app/Makefile` for build configuration
2. Edit `build-api22.sh` or `build-api25.sh` for build process
3. Test your changes:
   ```bash
   ./build-api22.sh
   ```

### Building from Different Source

To use a different source branch:

```bash
cd ledger-cosmos
git checkout <branch-name>
cd ..
./build-api22.sh
```

## Support and Resources

### Official Resources
- **Noble Blockchain**: https://nobleassets.xyz
- **Noble Documentation**: https://docs.initia.xyz
- **Ledger Developer Docs**: https://developers.ledger.com
- **Zondax ledger-cosmos**: https://github.com/Zondax/ledger-cosmos

### Getting Help
- For build issues: Check Docker logs and verify requirements
- For Ledger issues: Consult Ledger documentation
- For Noble-specific questions: Visit Noble community channels

## Security Considerations

1. **Always backup your recovery phrase** before installing any Ledger application
2. **Verify checksums** of built binaries before installation
3. **Test with simulator first** before using on physical device
4. **Only install on devices you own** and trust
5. **Keep your firmware updated** via Ledger Live

## License

This build system is provided as-is. The ledger-cosmos source code is licensed under Apache 2.0. See the source repository for details.

## Disclaimer

This software is provided "as-is" without warranty of any kind. Always backup your recovery phrase and test with small amounts first. The developers are not responsible for any loss of funds.

---

**Build Date:** 2025-12-12
**App Version:** 2.32.1
**Supported Devices:** Ledger Nano S Plus
**Supported Firmware:** 1.3.1, 1.3.2, 1.5.0
