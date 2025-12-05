# Go Installation Guide

Go (Golang) is a statically typed, compiled programming language designed for simplicity and efficiency.

## macOS

### Using Homebrew (Recommended)
```bash
brew install go
```

### Using Official Installer
1. Download the latest Go installer from [go.dev/dl](https://go.dev/dl/)
2. Run the downloaded `.pkg` file
3. Follow the installation wizard

### Verify Installation
```bash
go version
```

## Linux

### Using Official Binary (Recommended)
```bash
# Download the latest version (check go.dev/dl for current version)
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

# Remove any previous Go installation and extract
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

# Add Go to PATH (add to ~/.profile or ~/.bashrc)
export PATH=$PATH:/usr/local/go/bin

# Reload shell configuration
source ~/.profile
```

### Ubuntu/Debian (Using snap)
```bash
sudo snap install go --classic
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install golang
```

### Arch Linux
```bash
sudo pacman -S go
```

### Verify Installation
```bash
go version
```

## Windows

### Using Official Installer (Recommended)
1. Download the latest Go installer from [go.dev/dl](https://go.dev/dl/)
2. Run the downloaded `.msi` file
3. Follow the installation wizard
4. The installer will automatically add Go to PATH

### Using Windows Package Manager (winget)
```powershell
winget install GoLang.Go
```

### Using Chocolatey
```powershell
choco install golang
```

### Verify Installation
```powershell
go version
```

## Setting up Go Workspace

Go uses a workspace directory for your projects:

```bash
# Create workspace directory (optional, Go 1.11+ uses modules)
mkdir -p ~/go/{bin,src,pkg}

# Set GOPATH (add to ~/.profile, ~/.bashrc, or ~/.zshrc)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

**Note**: With Go modules (Go 1.11+), you can work outside of GOPATH.

## Running Hello World

```bash
# Navigate to the Go directory
cd languages/compiled/go

# Run directly (without compilation)
go run hello.go

# Or compile and run
go build hello.go
./hello
```

## Go Modules

For larger projects, use Go modules:

```bash
# Initialize a new module
go mod init example.com/myproject

# Run your program
go run .
```

## Official Documentation

- [Go Official Website](https://go.dev/)
- [Go Documentation](https://go.dev/doc/)
- [A Tour of Go](https://go.dev/tour/)
- [Effective Go](https://go.dev/doc/effective_go)
- [Go by Example](https://gobyexample.com/)
