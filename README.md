# Git-SSH-QuickTools

A collection of quick and efficient tools for managing SSH connections for Git operations on Windows and Unix-like systems.

## 🚀 Overview

Git-SSH-QuickTools provides a set of simple scripts to streamline SSH key management for Git operations. Whether you're working with GitHub, GitLab, or other Git hosting services, these tools help you quickly start, stop, and monitor your SSH agent and test your Git connections.

## ✨ Features

- **SSH Agent Management**: Start and stop SSH agents with ease
- **Key Loading**: Automatically load your SSH keys into the agent
- **Process Monitoring**: Check running SSH agent processes
- **Connection Testing**: Test your Git SSH connections
- **Cross-Platform**: Works on Windows (with Git Bash/WSL) and Unix-like systems
- **User-Friendly**: Interactive prompts and clear status messages

## 📁 Project Structure

```
Git-SSH-QuickTools/
├── start-ssh.sh          # Start SSH agent and load keys
├── stop-ssh.bat          # Stop SSH agent (Windows)
├── list-ssh.sh           # List running SSH agent processes
├── test-ssh-git-connection.sh  # Test Git SSH connection
└── README.md             # This file
```

## 🛠️ Prerequisites

- **SSH Key**: An SSH key pair (preferably ED25519)
- **Git**: Git installed and configured
- **SSH Agent**: SSH agent support (usually included with Git)
- **Shell Access**: Git Bash, WSL, or similar Unix-like shell on Windows

## 📦 Installation

1. **Clone or Download** this repository:
   ```bash
   git clone https://github.com/yourusername/Git-SSH-QuickTools.git
   cd Git-SSH-QuickTools
   ```

2. **Make scripts executable** (Unix-like systems):
   ```bash
   chmod +x *.sh
   ```

3. **Ensure your SSH key exists**:
   - Default location: `~/.ssh/id_ed25519`
   - If using a different key, update the path in `start-ssh.sh`

## 🚀 Usage

### Starting SSH Agent and Loading Keys

```bash
./start-ssh.sh
```

This script will:
- Check if an SSH agent is already running
- Start a new SSH agent if needed
- Load your SSH key (default: `~/.ssh/id_ed25519`)
- Display active SSH keys

### Stopping SSH Agent (Windows)

```cmd
stop-ssh.bat
```

This batch file will:
- Check for running SSH agent processes
- Terminate the SSH agent if found
- Provide status feedback

### Listing SSH Agent Processes

```bash
./list-ssh.sh
```

This script will:
- Search for running SSH agent processes
- Display process information
- Wait for user input before closing

### Testing Git SSH Connection

```bash
./test-ssh-git-connection.sh
```

This script will:
- Test SSH connection to GitHub
- Display connection status
- Wait for user input before closing

## 🔧 Configuration

### Custom SSH Key Path

If your SSH key is located elsewhere, edit `start-ssh.sh`:

```bash
# Change this line to your key path
KEY="$HOME/.ssh/your_custom_key"
```

### Different Git Hosts

To test connections to different Git hosts, modify `test-ssh-git-connection.sh`:

```bash
# For GitLab
ssh -T git@gitlab.com

# For Bitbucket
ssh -T git@bitbucket.org
```

## 🐛 Troubleshooting

### SSH Key Not Found

**Problem**: Script reports "SSH key not found"

**Solution**:
1. Verify your SSH key exists: `ls -la ~/.ssh/`
2. Update the key path in `start-ssh.sh`
3. Generate a new key if needed: `ssh-keygen -t ed25519 -C "your_email@example.com"`

### Permission Denied

**Problem**: SSH connection fails with permission denied

**Solution**:
1. Ensure your public key is added to your Git hosting service
2. Check key permissions: `chmod 600 ~/.ssh/id_ed25519`
3. Verify SSH agent is running: `ssh-add -l`

### SSH Agent Not Starting

**Problem**: SSH agent fails to start

**Solution**:
1. Check if SSH agent is already running: `echo $SSH_AUTH_SOCK`
2. Kill existing processes: `pkill ssh-agent`
3. Restart your terminal/shell

## 📋 Common Workflows

### Daily Development Setup

1. Open your terminal
2. Run `./start-ssh.sh`
3. Verify connection with `./test-ssh-git-connection.sh`
4. Start your development work

### End of Day Cleanup

1. Run `stop-ssh.bat` (Windows) or `pkill ssh-agent` (Unix)
2. Close your terminal

### Troubleshooting Session

1. Run `./list-ssh.sh` to check processes
2. Use `./test-ssh-git-connection.sh` to test connectivity
3. Restart SSH agent if needed with `./start-ssh.sh`

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Development Setup

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes
4. Test your changes thoroughly
5. Commit your changes: `git commit -m 'Add amazing feature'`
6. Push to the branch: `git push origin feature/amazing-feature`
7. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by the need for quick SSH management in development workflows
- Built with simplicity and efficiency in mind
- Thanks to the Git and SSH communities for excellent documentation

## 📞 Support

If you encounter any issues or have questions:

1. Check the [Troubleshooting](#troubleshooting) section
2. Search existing [Issues](../../issues)
3. Create a new issue with detailed information

---

**Happy coding! 🎉**
