#!/usr/bin/env bash

check_command_availability() {
  local command_name="$1"

  if ! command -v "$command_name" &> /dev/null; then
    echo "Error: '$command_name' command not found. Please ensure that it is installed and in the system PATH."
    exit 1
  fi
}

get_project_root() {
  local git_root
  git_root=$(git rev-parse --show-toplevel 2>/dev/null)

  if [ -z "$git_root" ]; then
    echo "Error: Not inside a Git repository."
    exit 1
  fi

  echo "$git_root"
}

check_command_availability "jq"
check_command_availability "git"
check_command_availability "code"

project_root=$(get_project_root)
json_file="$project_root/.vscode/extensions.json"
extensionList=$(jq -r '.recommendations[]' "$json_file")
IFS=$'\n' read -d '' -r -a extensionArr <<< "$extensionList"

echo "Will install: "
echo "$extensionList"
echo

# Install the extensions
for extension in "${extensionArr[@]}"; do
  code --install-extension "$extension" --force
  echo
done

echo "All installed, remember to enable them in VS Code."
