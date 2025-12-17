# Noble60 Ledger App - Scripts Usage Guide

This project provides two sets of scripts for building, installing, and deleting the Noble60 Ledger app.

## 📋 Overview

### 1. Universal Scripts (Auto-Detection) - Recommended ⭐

These scripts detect your device and prompt you to select the appropriate API level:

| Script | Purpose | Usage |
|--------|---------|-------|
| `build.sh` | Build app (prompts for API level) | `./build.sh [22\|25]` |
| `install.sh` | Install app (auto-detects device) | `./install.sh [--delete]` |
| `uninstall.sh` | Uninstall app from device | `./uninstall.sh` |
| `clean.sh` | Clean build artifacts | `./clean.sh [--all]` |

### 2. API Level 22 Specific Scripts

For firmware 1.3.1/1.3.2 specifically:

| Script | Purpose | Usage |
|--------|---------|-------|
| `build-api22.sh` | Build for API 22 | `./build-api22.sh` |
| `install-api22.sh` | Install API 22 version | `./install-api22.sh [--delete]` |
| `uninstall-api22.sh` | Uninstall API 22 version | `./uninstall-api22.sh` |

### 3. API Level 25 Specific Scripts

For firmware 1.5.0:

| Script | Purpose | Usage |
|--------|---------|-------|
| `build-api25.sh` | Build for API 25 | `./build-api25.sh` |
| `install_new.sh` | Install API 25 version | `./install_new.sh 25 [--delete]` |
| `uninstall.sh` | Uninstall (universal) | `./uninstall.sh` |

---

## 🚀 Quick Start

### Option A: Universal Scripts (Easiest)

**Step 1: Check your device firmware**

On your Ledger:
1. Press both buttons for Settings
2. Navigate to "Device" → "About"
3. Check "Firmware version"
   - 1.3.1 or 1.3.2 → Use API Level 22
   - 1.5.0 → Use API Level 25

**Step 2: Build the app**

```bash
./build.sh
# Will prompt you to select API level (22 or 25)
```

Or specify directly:

```bash
./build.sh 22    # For firmware 1.3.x
./build.sh 25    # For firmware 1.5.0
```

**Step 3: Install to device**

```bash
./install.sh
# Will detect device and prompt for API level
```

To delete existing app first:

```bash
./install.sh --delete
```

**Step 4: Uninstall app (if needed)**

```bash
./uninstall.sh
```

**Step 5: Clean build artifacts (if needed)**

```bash
./clean.sh         # Clean source build artifacts only
./clean.sh --all   # Clean everything including builds/
```

---

### Option B: API22-Specific Scripts

For firmware 1.3.1/1.3.2:

```bash
# Build
./build-api22.sh

# Install
./install-api22.sh

# Or install with delete
./install-api22.sh --delete

# Uninstall
./uninstall-api22.sh

# Clean
./clean.sh
```

---

## 🔍 Script Details

### Universal Scripts

#### `build.sh` - Universal Builder

Builds the app for your chosen API level.

**Interactive mode:**
```bash
./build.sh
# Prompts: "Which API level to build? (22/25):"
```

**Direct mode:**
```bash
./build.sh 22    # Build for API 22
./build.sh 25    # Build for API 25
```

**Output:**
- `builds/api22/app.hex` (for API 22)
- `builds/api25/app.hex` (for API 25)

---

#### `install.sh` - Universal Installer

Installs the app with device detection and API level selection.

**Basic usage:**
```bash
./install.sh
```

**Steps:**
1. Detects device connection
2. Prompts you to check firmware version
3. Asks which API level to use (22 or 25)
4. Verifies build file exists
5. Shows security warning
6. Installs to device

**With delete:**
```bash
./install.sh --delete
```
Deletes existing app before installing.

**Requirements:**
- Device connected and unlocked
- Device on main screen
- Ledger Live closed
- Build file exists in `builds/api{22|25}/app.hex`

---

#### `uninstall.sh` - Universal Uninstaller

Uninstalls the Noble60 app from your device.

**Usage:**
```bash
./uninstall.sh
```

**Process:**
1. Confirms device is ready
2. Attempts Method 1: Standard deletion
3. If fails, attempts Method 2: Extended parameters
4. If both fail, provides manual instructions

**Requirements:**
- Device connected and unlocked
- Device on main screen (not in app)
- Ledger Live closed

---

#### `clean.sh` - Build Cleaner

Cleans build artifacts and temporary files.

**Usage:**
```bash
./clean.sh         # Clean source artifacts only
./clean.sh --all   # Clean everything including builds/
```

**Cleaned Items:**
- Source build artifacts (bin/, debug/, build/, etc.)
- Temporary files (.pyc, .DS_Store, etc.)
- With `--all`: Output directories (builds/api22/, builds/api25/)

**When to use:**
- Before a fresh rebuild
- To free up disk space
- After switching branches or making major changes

---

### API22-Specific Scripts

#### `build-api22.sh`

Builds specifically for firmware 1.3.1/1.3.2.

```bash
./build-api22.sh
```

Output: `builds/api22/app.hex`

---

#### `install-api22.sh`

Installs API 22 version to device.

**Basic:**
```bash
./install-api22.sh
```

**With delete:**
```bash
./install-api22.sh --delete
```

---

#### `uninstall-api22.sh`

Uninstalls API 22 version from device.

```bash
./uninstall-api22.sh
```

---

## 📝 Common Workflows

### First Time Setup

```bash
# 1. Check your firmware version on device
#    Settings → Device → About → Firmware version

# 2. Build the app
./build.sh 22    # Or 25 for firmware 1.5.0

# 3. Install
./install.sh

# 4. Verify on device
#    - Open Noble60 app
#    - Check that Expert mode is NOT present
```

### Updating the App

```bash
# 1. Uninstall old version
./uninstall.sh

# 2. Clean and rebuild
./clean.sh
./build.sh 22    # Or your API level

# 3. Install new version
./install.sh --delete
```

### Switching Between Versions

```bash
# Remove current version
./uninstall.sh

# Clean old build
./clean.sh --all

# Build different version
./build.sh 25    # Switch to API 25

# Install
./install.sh
```

---

## 🔧 Helper Scripts

### `get_device_info.py`

Internal helper script used by `install.sh` to detect device connection.

**Manual usage:**
```bash
python3 get_device_info.py
```

Returns JSON with device status and API level recommendations.

### `check_device.sh`

Diagnostic tool to verify device connection and Noble60 app status.

```bash
./check_device.sh
```

Checks:
1. Device is connected
2. Noble60 app is open and responding

---

## ⚠️ Important Notes

### Before Installing

1. ✅ **Backup your recovery phrase** (24 words)
2. ✅ **Close Ledger Live** if running
3. ✅ **Unlock your device** (enter PIN)
4. ✅ **Exit any apps** (main screen only)

### API Level Selection

| Firmware Version | API Level |
|-----------------|-----------|
| 1.3.1           | 22        |
| 1.3.2           | 22        |
| 1.5.0           | 25        |

Using the wrong API level will cause installation to fail.

### Modified Features

This modified version includes:

- ✅ **Flexible BIP44 path support**: m/44'/60'/X'/Y/Z
- ✅ **Expert mode removed**: Prevents device freeze issue
- ✅ **Custom address indices**: Can use m/44'/60'/0'/0/16, etc.

---

## 🐛 Troubleshooting

### Build Fails

```bash
# Check Docker is running
docker info

# Verify source exists
ls -la ledger-cosmos/

# Clean and rebuild
cd ledger-cosmos/app
make clean
cd ../..
./build.sh 22
```

### Installation Fails

```bash
# Check device
./check_device.sh

# Verify build exists
ls -lh builds/api22/app.hex
ls -lh builds/api25/app.hex

# Try with delete flag
./install.sh --delete
```

### Device Not Detected

1. Unplug USB cable
2. Wait 3 seconds
3. Plug back in
4. Unlock device
5. Run `./check_device.sh`

### Uninstall Fails

Try manual uninstallation:
1. On device: Settings → Applications → Noble60 → Uninstall
2. Or use Ledger Live Manager

### Clean Fails

```bash
# Manually clean
cd ledger-cosmos/app
make clean
rm -rf bin/ build/ debug/ output/

# Remove output directories
cd ../..
rm -rf builds/api22 builds/api25
```

---

## 📚 Script Comparison

| Feature | Universal Scripts | API22-Specific | API25-Specific |
|---------|------------------|----------------|----------------|
| Auto-detect device | ✅ | ❌ | ❌ |
| Prompt API level | ✅ | ❌ | ❌ |
| Fixed API level | ❌ | ✅ (22) | ✅ (25) |
| Uninstall support | ✅ | ✅ | ✅ |
| Clean support | ✅ | ✅ | ✅ |
| Ease of use | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

**Recommendation:** Use universal scripts unless you need to script/automate for a specific API level.

---

## 🎯 Summary

**For most users (Recommended):**
```bash
./build.sh       # Prompts for API level
./install.sh     # Detects device and installs
./uninstall.sh   # Removes app
./clean.sh       # Clean build artifacts
```

**For API 22 (firmware 1.3.x) users:**
```bash
./build-api22.sh
./install-api22.sh
./uninstall-api22.sh
./clean.sh
```

**For API 25 (firmware 1.5.0) users:**
```bash
./build-api25.sh
./install_new.sh 25
./uninstall.sh
./clean.sh
```

---

**Happy building! 🚀**
