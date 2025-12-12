# Modifications to Zondax ledger-cosmos

This document describes all modifications made to the original [Zondax ledger-cosmos](https://github.com/Zondax/ledger-cosmos) source code to support Noble with BIP-60 derivation path.

## Overview

The Noble60 app is based on Zondax's ledger-cosmos implementation with modifications to support:
- **App Name**: Noble60 (instead of Cosmos)
- **Derivation Path**: m/44'/60' (BIP-60, instead of standard Cosmos m/44'/118')
- **Chain**: Noble blockchain (noble-1)
- **Address Prefix**: noble1

## Modified Files

### 1. `ledger-cosmos/app/Makefile`

**Lines 60-77**: Added Noble configuration support

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
define error_message


COIN value not supported: [$(COIN)]


endef
$(error "$(error_message)")
endif
```

**What it does**:
- Adds support for `COIN=NOBLE` build parameter
- Sets app name to "Noble60"
- Changes derivation path from Cosmos's 44'/118' to Noble's 44'/60'
- Maintains backward compatibility with original Cosmos build (COIN=ATOM)

## Build Usage

### Build for Noble (BIP-60)
```bash
# In Docker container:
BOLOS_SDK=/opt/nanosplus-secure-sdk make COIN=NOBLE

# Using our build scripts:
./build-api22.sh  # For firmware 1.3.1/1.3.2
./build-api25.sh  # For firmware 1.5.0
```

### Build for Cosmos (original)
```bash
# In Docker container:
BOLOS_SDK=/opt/nanosplus-secure-sdk make COIN=ATOM
```

## Technical Details

### Derivation Path Comparison

| Chain | COIN Value | Derivation Path | Address Prefix |
|-------|-----------|-----------------|----------------|
| Cosmos | ATOM | m/44'/118'/0'/0/0 | cosmos1 |
| Noble | NOBLE | m/44'/60'/0'/0/0 | noble1 |

### Why BIP-60?

Noble uses BIP-60 (Ethereum's coin type) for its derivation path instead of the standard Cosmos BIP-118. This is because:
1. Noble is designed for USDC circulation
2. Aligns with Ethereum ecosystem standards
3. Enables better interoperability with Ethereum-based tools

### App Specifications

When built with `COIN=NOBLE`:
- **App Name**: Noble60
- **App Version**: 2.32.1
- **Curve**: secp256k1
- **Derivation Path**: 44'/60'
- **Address Format**: Bech32 with "noble1" prefix
- **Target Device**: Ledger Nano S Plus
- **Supported Firmware**: 1.3.1, 1.3.2, 1.5.0

## Source Code Attribution

This repository contains a modified version of [Zondax ledger-cosmos](https://github.com/Zondax/ledger-cosmos):
- **Original Author**: Zondax GmbH
- **Original License**: Apache 2.0
- **Original Repository**: https://github.com/Zondax/ledger-cosmos
- **Modifications**: Noble BIP-60 support (see above)

## Verification

To verify the modifications:
```bash
# Check the Makefile changes
grep -A 5 "COIN.*NOBLE" ledger-cosmos/app/Makefile

# Build and verify derivation path
./build-api22.sh
# The build output should show: APPPATH = "44'/60'"
```

## Compatibility

The modifications:
- ✅ Maintain full backward compatibility with Cosmos (COIN=ATOM)
- ✅ Do not modify core cryptographic functions
- ✅ Use the same base code as official Cosmos Ledger app
- ✅ Only change app name and derivation path configuration

## Future Updates

To update from upstream Zondax ledger-cosmos:
1. Fetch latest changes from Zondax repository
2. Ensure the COIN=NOBLE block in Makefile is preserved
3. Test build with both COIN=ATOM and COIN=NOBLE
4. Verify Noble derivation path (44'/60') is maintained

## Security Considerations

The derivation path modification is **cosmetic** at the build level:
- No changes to cryptographic algorithms
- No changes to signing logic
- No changes to key generation
- Only changes the BIP-44 path used for key derivation

**Always verify**:
- Derivation path is 44'/60' for Noble builds
- App name shows "Noble60" on device
- Addresses start with "noble1" prefix
