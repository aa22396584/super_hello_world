# Rust Installation Guide

Rust is a systems programming language focused on safety, speed, and concurrency.

## macOS

### Using rustup (Recommended)
```bash
# Install rustup (Rust installer and version manager)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Follow the on-screen instructions
# Restart your terminal or run:
source $HOME/.cargo/env
```

### Using Homebrew
```bash
brew install rust
```

### Verify Installation
```bash
rustc --version
cargo --version
```

## Linux

### Using rustup (Recommended)
```bash
# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Follow the on-screen instructions
# Restart your terminal or run:
source $HOME/.cargo/env
```

### Ubuntu/Debian (Alternative)
```bash
sudo apt update
sudo apt install rustc cargo
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install rust cargo
```

### Arch Linux
```bash
sudo pacman -S rust
```

### Verify Installation
```bash
rustc --version
cargo --version
```

## Windows

### Using rustup (Recommended)
1. Download rustup-init.exe from [rustup.rs](https://rustup.rs/)
2. Run the installer
3. Follow the on-screen instructions
4. Restart your terminal

**Note**: You may need to install Visual Studio C++ Build Tools first:
- Download from [visualstudio.microsoft.com](https://visualstudio.microsoft.com/visual-cpp-build-tools/)
- Install "Desktop development with C++"

### Using Windows Package Manager (winget)
```powershell
winget install Rustlang.Rustup
```

### Using Chocolatey
```powershell
choco install rust
```

### Verify Installation
```powershell
rustc --version
cargo --version
```

## Updating Rust

```bash
# Update Rust to the latest version
rustup update
```

## Running Hello World

```bash
# Navigate to the Rust directory
cd languages/compiled/rust

# Compile the program
rustc hello.rs

# Run the program
./hello
```

## Using Cargo (Rust's Package Manager)

While our simple Hello World doesn't require Cargo, most Rust projects use it:

```bash
# Create a new project
cargo new my_project

# Build and run
cd my_project
cargo run
```

## Official Documentation

- [Rust Official Website](https://www.rust-lang.org/)
- [The Rust Programming Language Book](https://doc.rust-lang.org/book/)
- [Rust by Example](https://doc.rust-lang.org/rust-by-example/)
- [Rust Standard Library](https://doc.rust-lang.org/std/)
