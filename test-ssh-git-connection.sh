#!/bin/bash

# List processes related to ssh-agent
echo "Testing git connection"

ssh -T git@github.com

# Pause for user to read output (optional in Git Bash)
read -p "Press any key to continue..."