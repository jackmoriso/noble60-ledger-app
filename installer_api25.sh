#!/usr/bin/env bash
APPNAME="Noble60"
APPVERSION="2.32.1"
APPPATH="44'/60'"
LOAD_PARAMS="--targetId 0x33100004 --targetVersion=1.5.0 --apiLevel 25 --fileName bin/app.hex --appName Noble60 --appVersion 2.32.1 --curve secp256k1 --tlv"
DELETE_PARAMS="--targetId 0x33100004 --appName Noble60"
APPHEX="
:02000004C0DE5C
:1000000001074E6F626C6536300206322E33322E97
:100010003103210E000E00001900000000000378DB
:100020000FF01CE0F9C3730CEC39F07380FF01ECA6
:1000300000000000040AFF028000002C8000003C49
:00000001FF
"
#!/usr/bin/env bash
#*******************************************************************************
#  Noble60 Ledger App Installer - API Level 25 (Firmware 1.5.0)
#*******************************************************************************
#  Based on Zondax installer scripts
#
#  This is a self-contained installer for the Noble60 Ledger app
#  built for firmware 1.5.0 (API Level 25).
#
#  Requirements:
#    - Python 3
#    - ledgerblue package (pip install ledgerblue)
#    - Ledger device connected and unlocked
#
#  Usage:
#    ./installer_api25.sh load    - Install Noble60 app to device
#    ./installer_api25.sh delete  - Remove Noble60 app from device
#    ./installer_api25.sh version - Show app version
#*******************************************************************************

if [ -z "$APPNAME" ]
then
  echo "This script has not been configured correctly"
  exit 1
fi

# check python 3 has been installed
if ! command -v python3 &>/dev/null; then
    echo Python 3 is not installed
    exit
fi

python3 -m ledgerblue.loadApp -h &>/dev/null;
if [ $? -ne 0 ]; then
    echo
    echo "ERR: ledgerblue pip package not found."
    echo "please install using 'pip install ledgerblue'"
    echo
    exit
fi

TMP_HEX_DIR=$(mktemp -d -t ci-XXXXXXXXXX)
mkdir -p ${TMP_HEX_DIR}/bin
BIN_HEX_FILE=${TMP_HEX_DIR}/bin/app.hex
echo -e "${APPHEX}" > ${BIN_HEX_FILE}

case "$1" in
  'load')
  cd "$TMP_HEX_DIR" || exit
  echo "==============================================================================="
  echo "  Installing Noble60 App - API Level 25 (Firmware 1.5.0)"
  echo "==============================================================================="
  echo ""
  echo "  App Name: $APPNAME"
  echo "  Version: $APPVERSION"
  echo "  Derivation Path: $APPPATH"
  echo "  Target: Ledger Nano S Plus"
  echo "  Firmware: 1.5.0"
  echo "  API Level: 25"
  echo ""
  echo "  Please confirm installation on your Ledger device..."
  echo ""
  python3 -m ledgerblue.loadApp --appFlags 0x200 --delete ${LOAD_PARAMS} --path ${APPPATH} --path "44'/1'"
  ;;
  'delete')
  echo "==============================================================================="
  echo "  Removing Noble60 App"
  echo "==============================================================================="
  echo ""
  echo "  Please confirm deletion on your Ledger device..."
  echo ""
  python3 -m ledgerblue.deleteApp ${DELETE_PARAMS}
  ;;
  'version')
  echo "v${APPVERSION}"
  ;;
  *)
    echo "==============================================================================="
    echo "  Noble60 Installer - API Level 25 (Firmware 1.5.0)"
    echo "==============================================================================="
    echo ""
    echo "  App: $APPNAME v$APPVERSION"
    echo "  Derivation Path: $APPPATH (BIP-60)"
    echo "  Target: Ledger Nano S Plus"
    echo ""
    echo "Usage:"
    echo "  load    - Install $APPNAME app to your Ledger device"
    echo "  delete  - Remove $APPNAME app from your Ledger device"
    echo "  version - Show $APPNAME app version"
    echo ""
    echo "Example:"
    echo "  ./installer_api25.sh load"
    echo ""
esac
