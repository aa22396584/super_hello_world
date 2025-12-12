# PHP Installation Guide

[English](../../README.md) | [繁體中文](../../README.zh-TW.md) | [简体中文](../../README.zh-CN.md) | [日本語](../../README.ja.md) | [한국어](../../README.ko.md) | [Bahasa Indonesia](../../README.id.md) | [ไทย](../../README.th.md)

PHP is a popular server-side scripting language designed for web development.

## macOS

### Using Homebrew (Recommended)
```bash
brew install php
```

### Verify Installation
```bash
php --version
```

## Linux

### Ubuntu/Debian
```bash
sudo apt update
sudo apt install php-cli
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install php php-cli
```

### Arch Linux
```bash
sudo pacman -S php
```

### Verify Installation
```bash
php --version
```

## Windows

### Using Official Installer
1. Download PHP from [windows.php.net](https://windows.php.net/download/)
2. Extract to `C:\php`
3. Add `C:\php` to PATH
4. Copy `php.ini-development` to `php.ini`

### Using Chocolatey
```powershell
choco install php
```

### Verify Installation
```powershell
php --version
```

## Running Hello World

```bash
cd languages/interpreted/php
php hello.php
```

## Official Documentation
- [PHP Official Website](https://www.php.net/)
- [PHP Documentation](https://www.php.net/docs.php)
