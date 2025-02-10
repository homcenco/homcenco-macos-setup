#!/bin/bash
set -u

ZPROFILE_LINK_PATH="https://raw.githubusercontent.com/homcenco/setup/main/zprofile"

# Global variables
ZPROFILE_FILE="$HOME/.zprofile"
ZPROFILE_LINK="$ZPROFILE_LINK_PATH/.zprofile"

ZMESSAGES_FILE="$HOME/.zmessages"
ZMESSAGES_LINK="$ZPROFILE_LINK_PATH/.zmessages"

ZFUNCTIONS_FILE="$HOME/.zfunctions"
ZFUNCTIONS_LINK="$ZPROFILE_LINK_PATH/.zfunctions"

# Source `.zmessages`
source /dev/stdin <<< "$(curl --insecure --silent $ZMESSAGES_LINK)"
success_arrow "Loading source .zmessages"

function setup_zprofile() {
  # Delete .zprofile file if exists
  [ -f "$ZPROFILE_FILE" ] && rm -f "$ZPROFILE_FILE" &&
  success_arrow 'Updating .zprofile file' || success_arrow 'Creating .zprofile file'
  # Copy new `.zprofile` file from repository
  curl -o "$ZPROFILE_FILE" "$ZPROFILE_LINK"
}

function setup_zmessages() {
  # Delete `.zmessages` file if exists
  [ -f "$ZMESSAGES_FILE" ] && rm -f "$ZMESSAGES_FILE" &&
  success_arrow 'Updating .zmessages file' || success_arrow 'Creating .zmessages file'
  # Copy new `.zmessages` file from repository
  curl -o "$ZMESSAGES_FILE" "$ZMESSAGES_LINK"
}

function setup_zfunctions() {
  # Delete `.zfunctions` file if exists
  [ -f "$ZFUNCTIONS_FILE" ] && rm -f "$ZFUNCTIONS_FILE" &&
  success_arrow 'Updating .zfunctions file' || success_arrow 'Creating .zfunctions file'
  # Copy new `.zfunctions` file from repository
  curl -o "$ZFUNCTIONS_FILE" "$ZFUNCTIONS_LINK"
}

# Start setup
[ -z "${BASH_VERSION:-}" ] && abort "Bash is required to interpret this script."
setup_zprofile
setup_zmessages
setup_zfunctions
