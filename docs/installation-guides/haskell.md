# Haskell Installation Guide

Haskell is a purely functional programming language with strong static typing.

## macOS

### Using GHCup (Recommended)
```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

### Using Homebrew
```bash
brew install ghc cabal-install
```

### Verify Installation
```bash
ghc --version
cabal --version
```

## Linux

### Using GHCup (Recommended)
```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

### Ubuntu/Debian
```bash
sudo apt update
sudo apt install haskell-platform
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install ghc cabal-install
```

### Arch Linux
```bash
sudo pacman -S ghc cabal-install
```

### Verify Installation
```bash
ghc --version
```

## Windows

### Using GHCup (Recommended)
1. Download and run the installer from [haskell.org/ghcup](https://www.haskell.org/ghcup/)
2. Follow the installation wizard

### Using Chocolatey
```powershell
choco install ghc cabal
```

### Verify Installation
```powershell
ghc --version
```

## Running Hello World

```bash
cd languages/functional/haskell

# Compile
ghc hello.hs

# Run
./hello
```

## Official Documentation
- [Haskell Official Website](https://www.haskell.org/)
- [Learn You a Haskell](http://learnyouahaskell.com/)
