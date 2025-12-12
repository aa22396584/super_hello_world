# Python Installation Guide

[English](../../README.md) | [繁體中文](../../README.zh-TW.md) | [简体中文](../../README.zh-CN.md) | [日本語](../../README.ja.md) | [한국어](../../README.ko.md) | [Bahasa Indonesia](../../README.id.md) | [ไทย](../../README.th.md)

Python is a high-level, interpreted programming language known for its simplicity and readability.

## macOS

### Using Homebrew (Recommended)
```bash
brew install python3
```

### Using Official Installer
1. Download the latest Python 3.x installer from [python.org](https://www.python.org/downloads/macos/)
2. Run the downloaded `.pkg` file
3. Follow the installation wizard

### Verify Installation
```bash
python3 --version
```

## Linux

### Ubuntu/Debian
```bash
sudo apt update
sudo apt install python3 python3-pip
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install python3 python3-pip
```

### Arch Linux
```bash
sudo pacman -S python python-pip
```

### Verify Installation
```bash
python3 --version
```

## Windows

### Using Official Installer (Recommended)
1. Download the latest Python 3.x installer from [python.org](https://www.python.org/downloads/windows/)
2. Run the downloaded `.exe` file
3. **Important**: Check "Add Python to PATH" during installation
4. Click "Install Now"

### Using Windows Package Manager (winget)
```powershell
winget install Python.Python.3
```

### Using Chocolatey
```powershell
choco install python
```

### Verify Installation
```powershell
python --version
```

## Running Hello World

```bash
# Navigate to the Python directory
cd languages/interpreted/python

# Run the program
python3 hello.py
```

## Official Documentation

- [Python Official Website](https://www.python.org/)
- [Python Documentation](https://docs.python.org/3/)
- [Python Tutorial](https://docs.python.org/3/tutorial/)
