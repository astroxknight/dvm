#!/usr/bin/env bash
set -Eeuo pipefail
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"
install -m 0755 "$SCRIPT_DIR/dvm" "$BIN_DIR/dvm"
install -m 0755 "$SCRIPT_DIR/dvm-shred" "$BIN_DIR/dvm-shred"
echo "Installed: $BIN_DIR/dvm and $BIN_DIR/dvm-shred"
case ":$PATH:" in
  *":$BIN_DIR:"*) echo "$BIN_DIR is already in PATH." ;;
  *)
    echo
    echo "$BIN_DIR is not currently in PATH. Add this to ~/.bashrc or ~/.zshrc:"
    echo 'export PATH="$HOME/.local/bin:$PATH"'
    echo "Then open a new terminal or run: source ~/.bashrc (Bash) / source ~/.zshrc (Zsh)"
    ;;
esac
