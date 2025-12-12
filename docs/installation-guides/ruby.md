# Ruby Installation Guide

[English](../../README.md) | [繁體中文](../../README.zh-TW.md) | [简体中文](../../README.zh-CN.md) | [日本語](../../README.ja.md) | [한국어](../../README.ko.md) | [Bahasa Indonesia](../../README.id.md) | [ไทย](../../README.th.md)

Ruby is a dynamic, object-oriented programming language focused on simplicity and productivity.

## macOS

### Using Homebrew (Recommended)
```bash
brew install ruby
```

### Using rbenv (Recommended for version management)
```bash
# Install rbenv
brew install rbenv ruby-build

# Initialize rbenv
rbenv init

# Install Ruby
rbenv install 3.2.0
rbenv global 3.2.0
```

### Verify Installation
```bash
ruby --version
```

## Linux

### Ubuntu/Debian
```bash
sudo apt update
sudo apt install ruby-full
```

### Using rbenv (Recommended)
```bash
# Install dependencies
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

# Install rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-installer | bash

# Add to PATH
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# Install Ruby
rbenv install 3.2.0
rbenv global 3.2.0
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install ruby ruby-devel
```

### Arch Linux
```bash
sudo pacman -S ruby
```

### Verify Installation
```bash
ruby --version
```

## Windows

### Using RubyInstaller (Recommended)
1. Download RubyInstaller from [rubyinstaller.org](https://rubyinstaller.org/)
2. Run the installer
3. Select "Add Ruby executables to PATH"
4. Complete the installation

### Using Chocolatey
```powershell
choco install ruby
```

### Verify Installation
```powershell
ruby --version
```

## Running Hello World

```bash
cd languages/interpreted/ruby
ruby hello.rb
```

## Official Documentation
- [Ruby Official Website](https://www.ruby-lang.org/)
- [Ruby Documentation](https://ruby-doc.org/)
