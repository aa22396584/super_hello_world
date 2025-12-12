# Go 安装指南

[English](go.md) | [繁體中文](go.zh-TW.md) | [简体中文](go.zh-CN.md) | [日本語](go.ja.md) | [한국어](go.ko.md) | [Bahasa Indonesia](go.id.md) | [ไทย](go.th.md)

Go（Golang）是一种静态类型、编译型的编程语言，强调简洁与效率。

## macOS

### 使用 Homebrew（推荐）
```bash
brew install go
```

### 使用官方安装包
1. 从 [go.dev/dl](https://go.dev/dl/) 下载最新安装包  
2. 运行下载的 `.pkg`  
3. 按向导完成安装  

### 验证安装
```bash
go version
```

## Linux

### 使用官方二进制（推荐）
```bash
# 下载最新版本（到 go.dev/dl 查看版本）
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

# 移除旧版并解压
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

# 将 Go 加入 PATH（写入 ~/.profile 或 ~/.bashrc）
export PATH=$PATH:/usr/local/go/bin

# 重新加载配置
source ~/.profile
```

### Ubuntu/Debian（snap）
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

### 验证安装
```bash
go version
```

## Windows

### 使用官方安装包（推荐）
1. 从 [go.dev/dl](https://go.dev/dl/) 下载最新 `.msi`  
2. 运行并按向导完成安装  
3. 安装程序会自动将 Go 加入 PATH  

### 使用 winget
```powershell
winget install GoLang.Go
```

### 使用 Chocolatey
```powershell
choco install golang
```

### 验证安装
```powershell
go version
```

## 设置 Go 工作区

Go 使用工作区保存项目（Go 1.11+ 的 modules 允许不受 GOPATH 限制）：
```bash
# 创建工作区（可选）
mkdir -p ~/go/{bin,src,pkg}

# 设置 GOPATH（写入 ~/.profile、~/.bashrc 或 ~/.zshrc）
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

> 说明：使用 Go modules 时，可以在 GOPATH 之外开发。

## 运行 Hello World

```bash
# 进入 Go 目录
cd languages/compiled/go

# 直接运行（无需预编译）
go run hello.go

# 或编译后运行
go build hello.go
./hello
```

## Go Modules

较大项目请使用 Go modules：
```bash
# 初始化模块
go mod init example.com/myproject

# 运行程序
go run .
```

## 官方文档

- [Go Official Website](https://go.dev/)
- [Go Documentation](https://go.dev/doc/)
- [A Tour of Go](https://go.dev/tour/)
- [Effective Go](https://go.dev/doc/effective_go)
- [Go by Example](https://gobyexample.com/)

