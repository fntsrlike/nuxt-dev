#!/usr/bin/env bash

# List of extensions to install
extensions=(
  # Vue
  "Vue.volar"
  "Nuxt.mdc"
)

# Check if the 'code' command is available
if ! command -v code &> /dev/null; then
  echo "Error: 'code' command not found. Please ensure that Visual Studio Code is installed and in the system PATH."
  exit 1
fi

# Install the extensions
for extension in "${extensions[@]}"; do
  code --install-extension "$extension" --force
  echo
done
