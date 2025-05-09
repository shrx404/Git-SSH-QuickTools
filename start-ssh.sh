#!/usr/bin/env bash

KEY="$HOME/.ssh/id_ed25519"

echo "----------------------------------------"
echo "Checking ssh-agent…"
echo "----------------------------------------"

# Check if SSH agent is already running (if SSH_AUTH_SOCK is set)
if [ -z "$SSH_AUTH_SOCK" ]; then
  echo "No SSH agent found, starting a new one..."
  eval "$(ssh-agent -s)"
else
  echo "ssh-agent is already running."
fi

# Check if key is loaded into agent
if ssh-add -l | grep -F "$KEY" >/dev/null 2>&1; then
  echo "SSH key already loaded."
else
  if [ -f "$KEY" ]; then
    echo "Adding SSH key: $KEY"
    ssh-add "$KEY"
  else
    echo "⚠️  SSH key not found at $KEY"
  fi
fi

# List active keys
echo "----------------------------------------"
echo "Active SSH keys:"
ssh-add -l || echo "(none)"
echo "----------------------------------------"

# Pause to keep the window open
read -p "Press Enter to exit…"
