#!/bin/bash

# List processes related to ssh-agent
echo "Searching for ssh-agent processes..."
ps aux | grep -v grep | grep ssh-agent

# Pause for user to read output (optional in Git Bash)
read -p "Press any key to continue..."
