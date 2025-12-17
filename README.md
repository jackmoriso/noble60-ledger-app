# Noble60 Ledger App

**Modified Ledger application for Noble blockchain with flexible BIP-60 path support**

[![GitHub](https://img.shields.io/badge/GitHub-initia--labs%2Fnoble60--ledger--app-blue)](https://github.com/initia-labs/noble60-ledger-app)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

## Overview

Noble60 is a modified Ledger application for the Noble blockchain that uses **BIP-60 (m/44'/60')** derivation path. This fork includes important improvements for stability and flexibility.

### Key Features

- ✅ **Flexible BIP44 Path Support**: Supports m/44'/60'/X'/Y/Z (configurable account, change, and address indices)
- ✅ **Expert Mode Removed**: Prevents device freeze issue
- ✅ **Automatic Firmware Detection**: Detects device firmware and validates compatibility before installation
- ✅ **Compatible with Ledger Nano S Plus**: Firmware 1.3.1, 1.3.2, and 1.5.0
- ✅ **Docker-based Build System**: No local SDK installation required
- ✅ **Comprehensive Script Suite**: Easy-to-use build, install, and management scripts

### Modified Features

This version differs from the standard Noble app:

1. **BIP44 Path Validation**: Removed restriction on hdPath[3], allowing flexible configuration of account index, change index, and address index
2. **Expert Mode**: Completely removed from UI to prevent device freeze issues
3. **Custom Address Support**: Can use paths like m/44'/60'/0'/0/16 or any other custom indices

---

## Quick Start

### Prerequisites

- Ledger Nano S Plus device
- Docker installed and running (for building)
- Python 3 with `ledgerblue` package (for installation)

```bash
pip3 install ledgerblue
```

### Installation

**Step 1: Clone the repository**

```bash
git clone https://github.com/initia-labs/noble60-ledger-app
cd noble60-ledger-app
```

**Step 2: Build the app**

```bash
./build.sh
# Prompts you to select API level (22 or 25) based on your firmware
```

Or build for specific firmware:

```bash
./build-api22.sh  # For firmware 1.3.1/1.3.2
./build-api25.sh  # For firmware 1.5.0
```

**Step 3: Install to device**

```bash
./install.sh
# Auto-detects firmware and guides you through installation
```

Or use API-specific installer:

```bash
./install-api22.sh  # For firmware 1.3.1/1.3.2
```

**Step 4: Verify installation**

- Open Noble60 app on your Ledger device
- Check that Expert mode is NOT present in the menu
- App should display "Application is ready"

---

## Available Scripts

### Universal Scripts (Recommended)

| Script | Description |
|--------|-------------|
| `./build.sh` | Build app (prompts for API level) |
| `./install.sh` | Install app (auto-detects firmware) |
| `./uninstall.sh` | Uninstall app from device |
| `./clean.sh` | Clean build artifacts |
| `./check_device.sh` | Check device connection and status |

### API22-Specific Scripts (Firmware 1.3.1/1.3.2)

| Script | Description |
|--------|-------------|
| `./build-api22.sh` | Build for API Level 22 |
| `./install-api22.sh` | Install API 22 version |
| `./uninstall-api22.sh` | Uninstall API 22 version |

### API25-Specific Scripts (Firmware 1.5.0)

| Script | Description |
|--------|-------------|
| `./build-api25.sh` | Build for API Level 25 |
| Use `./install.sh` | For installation (select API 25) |
| Use `./uninstall.sh` | For uninstallation |

---

## Usage Examples

### Basic Workflow

```bash
# 1. Build
./build.sh

# 2. Install
./install.sh

# 3. Verify on device
# Open Noble60 app and check it's working
```

### API22 Fast Track

```bash
# For firmware 1.3.1/1.3.2 users
./build-api22.sh
./install-api22.sh
```

### Clean and Rebuild

```bash
# Clean build artifacts
./clean.sh

# Or clean everything including output
./clean.sh --all

# Rebuild
./build.sh
```

### Update Existing App

```bash
# Uninstall old version
./uninstall.sh

# Build new version
./build.sh

# Install with automatic deletion of old app
./install.sh --delete
```

---

## Firmware Compatibility

| Firmware Version | API Level | Build Script | Install Script |
|-----------------|-----------|--------------|----------------|
| 1.3.1           | 22        | `./build-api22.sh` | `./install-api22.sh` |
| 1.3.2           | 22        | `./build-api22.sh` | `./install-api22.sh` |
| 1.5.0           | 25        | `./build-api25.sh` | `./install.sh` |

**Note:** Installing the wrong API level will fail with error `511f` (SDK version mismatch). The installer scripts now detect this automatically and prevent installation.

---

## Custom BIP44 Path Configuration

The app supports flexible BIP44 paths. To use a custom address index (e.g., address #16):

### In Your Wallet/CLI Tool

Specify the full path when connecting to Ledger:

```
m/44'/60'/0'/0/16
```

### Common Use Cases

- Default address: `m/44'/60'/0'/0/0`
- Address #16: `m/44'/60'/0'/0/16`
- Account #1, Address #5: `m/44'/60'/1'/0/5`
- Custom change index: `m/44'/60'/0'/1/0`

All three positions (account, change, address) are configurable.

---

## Troubleshooting

### Device Not Detected

```bash
# Check device connection
./check_device.sh

# If device not found:
# 1. Unplug and replug USB cable
# 2. Unlock device (enter PIN)
# 3. Make sure device is on main screen
# 4. Close Ledger Live if running
```

### Installation Fails with "511f" Error

This means API level mismatch. Check your firmware version:

1. On device: Settings → Device → About → Firmware version
2. Use correct build:
   - Firmware 1.3.x → Use API 22
   - Firmware 1.5.0 → Use API 25

The new installer scripts automatically detect this and prevent installation.

### Build Fails

```bash
# Ensure Docker is running
docker info

# Clean and rebuild
./clean.sh --all
./build.sh
```

### App Freezes (Old Version)

If you're experiencing freezes:

1. **This version has Expert mode removed** to prevent freezes
2. Uninstall old version: `./uninstall.sh`
3. Install this modified version: `./install.sh`

---

## Technical Details

### App Specifications

| Property | Value |
|----------|-------|
| **App Name** | Noble60 |
| **Version** | 2.32.1 |
| **Derivation Path** | m/44'/60' (BIP-60, Ethereum-compatible) |
| **Target Device** | Ledger Nano S Plus |
| **Supported Firmware** | 1.3.1, 1.3.2, 1.5.0 |
| **Coin Type** | 60 (Ethereum) |
| **API Levels** | 22 (FW 1.3.x), 25 (FW 1.5.0) |

### Source Code Modifications

This fork includes the following changes to the original Zondax ledger-cosmos codebase:

**1. BIP44 Path Flexibility** (`ledger-cosmos/app/src/common/app_main.c`):
- Removed hdPath[3] validation
- Allows flexible account, change, and address indices
- Only enforces BIP44 purpose (44') and coin type (60')

**2. Expert Mode Removal** (`ledger-cosmos/deps/ledger-zxlib/app/common/view_s.c`, `view_x.c`):
- Commented out Expert mode menu entries
- Removed from UI flow for all device types (Nano S, Nano X, Nano S Plus)
- Prevents device freeze issues

**3. Build System Enhancements**:
- Automatic git repository initialization
- Improved error handling
- Better SDK version detection

---

## Build Output

Build artifacts are located in:

```
builds/
├── api22/
│   ├── app.hex      # For physical Ledger installation
│   ├── app.elf      # For Speculos simulator
│   └── app.sha256   # Checksums
└── api25/
    ├── app.hex
    ├── app.elf
    └── app.sha256
```

---

## Development

### Project Structure

```
noble60-ledger-app/
├── ledger-cosmos/           # Source code (Zondax base)
│   └── app/
│       └── src/
│           └── common/
│               └── app_main.c  # BIP44 validation
├── builds/                  # Build outputs
├── build*.sh                # Build scripts
├── install*.sh              # Installation scripts
├── uninstall*.sh            # Uninstallation scripts
├── clean.sh                 # Clean script
├── check_*.py               # Device detection tools
└── check_device.sh          # Diagnostic tool
```

### Building for Speculos Simulator

```bash
# Build as normal
./build-api25.sh

# Use app.elf with Speculos
speculos builds/api25/app.elf --model nanosp
```

---

## Security Notice

⚠️ **IMPORTANT**: Before installing ANY application on your Ledger device:

1. ✅ **Backup your recovery phrase** (24 words) securely
2. ✅ Verify you can read and access your backup
3. ✅ Store it safely, separate from your device

**Installing modified applications carries risk.** While this modification only removes the Expert mode UI and relaxes BIP44 path validation (no security impact), always ensure you have your recovery phrase backed up.

If your device fails and you don't have your recovery phrase, **your funds will be permanently lost**.

---

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly on Ledger device
5. Submit a pull request

---

## Credits

- **Base Code**: [Zondax ledger-cosmos](https://github.com/Zondax/ledger-cosmos)
- **Modifications**: [Initia Labs](https://github.com/initia-labs)
- Built with Ledger SDK for Nano S Plus

---

## License

Apache 2.0 - See [LICENSE](LICENSE) file for details

---

## Support

- **Issues**: [GitHub Issues](https://github.com/initia-labs/noble60-ledger-app/issues)
- **Documentation**: This README
- **Community**: Noble blockchain community

---

**Happy building! 🚀**
