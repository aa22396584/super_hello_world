# PowerShell Hello World

PowerShell is a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework.

## Installation

### Windows
PowerShell comes pre-installed on Windows.

```powershell
$PSVersionTable.PSVersion
```

### macOS/Linux
Install PowerShell Core:

```bash
# macOS (using Homebrew)
brew install --cask powershell

# Ubuntu/Debian
sudo apt install powershell

# Fedora
sudo dnf install powershell
```

## Running the Program

```bash
pwsh hello.ps1
```

Or on Windows:

```powershell
powershell hello.ps1
```

## Expected Output

```
Hello, World!
```

## Official Documentation

- [PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/)
- [PowerShell GitHub](https://github.com/PowerShell/PowerShell)
