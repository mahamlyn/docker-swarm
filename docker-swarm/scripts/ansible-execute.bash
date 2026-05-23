#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLAYBOOK_PATH="$SCRIPT_DIR/../main.yml"
INVENTORY_PATH="$SCRIPT_DIR/../inventory/inventory.ini"

ansible-playbook "$PLAYBOOK_PATH" -i "$INVENTORY_PATH" -u localadmin --ask-pass --ask-become-pass