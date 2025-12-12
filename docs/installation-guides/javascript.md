# JavaScript (Node.js) Installation Guide

[English](../../README.md) | [繁體中文](../../README.zh-TW.md) | [简体中文](../../README.zh-CN.md) | [日本語](../../README.ja.md) | [한국어](../../README.ko.md) | [Bahasa Indonesia](../../README.id.md) | [ไทย](../../README.th.md)

JavaScript is a versatile programming language. For running JavaScript outside the browser, we use Node.js.

## macOS

### Using Homebrew (Recommended)
```bash
brew install node
```

### Using Official Installer
1. Download the LTS version from [nodejs.org](https://nodejs.org/)
2. Run the downloaded `.pkg` file
3. Follow the installation wizard

### Using nvm (Node Version Manager)
```bash
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Install Node.js
nvm install --lts
nvm use --lts
```

### Verify Installation
```bash
node --version
npm --version
```

## Linux

### Ubuntu/Debian
```bash
# Using NodeSource repository (recommended for latest version)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install nodejs npm
```

### Arch Linux
```bash
sudo pacman -S nodejs npm
```

### Using nvm (Recommended)
```bash
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Reload shell configuration
source ~/.bashrc

# Install Node.js
nvm install --lts
nvm use --lts
```

### Verify Installation
```bash
node --version
npm --version
```

## Windows

### Using Official Installer (Recommended)
1. Download the LTS version from [nodejs.org](https://nodejs.org/)
2. Run the downloaded `.msi` file
3. Follow the installation wizard
4. Ensure "Add to PATH" is checked

### Using Windows Package Manager (winget)
```powershell
winget install OpenJS.NodeJS.LTS
```

### Using Chocolatey
```powershell
choco install nodejs-lts
```

### Using nvm-windows
1. Download nvm-windows from [GitHub](https://github.com/coreybutler/nvm-windows/releases)
2. Install and run:
```powershell
nvm install lts
nvm use lts
```

### Verify Installation
```powershell
node --version
npm --version
```

## Running Hello World

```bash
# Navigate to the JavaScript directory
cd languages/interpreted/javascript

# Run the program
node hello.js
```

## Official Documentation

- [Node.js Official Website](https://nodejs.org/)
- [Node.js Documentation](https://nodejs.org/docs/)
- [JavaScript MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
