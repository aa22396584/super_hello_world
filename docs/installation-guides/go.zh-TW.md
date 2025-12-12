# Go 安裝指南

[English](go.md) | [繁體中文](go.zh-TW.md) | [简体中文](go.zh-CN.md) | [日本語](go.ja.md) | [한국어](go.ko.md) | [Bahasa Indonesia](go.id.md) | [ไทย](go.th.md)

Go（Golang）是一種靜態型別、編譯型的程式語言，設計重點在簡潔與效率。

## macOS

### 使用 Homebrew（推薦）
```bash
brew install go
```

### 使用官方安裝程式
1. 從 [go.dev/dl](https://go.dev/dl/) 下載最新安裝包  
2. 執行下載的 `.pkg`  
3. 依精靈指示完成安裝  

### 驗證安裝
```bash
go version
```

## Linux

### 使用官方二進位（推薦）
```bash
# 下載最新版本（請到 go.dev/dl 確認版本）
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

# 移除舊版並解壓
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

# 加入 PATH（寫入 ~/.profile 或 ~/.bashrc）
export PATH=$PATH:/usr/local/go/bin

# 重新載入設定
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

### 驗證安裝
```bash
go version
```

## Windows

### 使用官方安裝程式（推薦）
1. 從 [go.dev/dl](https://go.dev/dl/) 下載最新 `.msi`  
2. 執行並依精靈完成安裝  
3. 安裝程式會自動將 Go 加入 PATH  

### 使用 winget
```powershell
winget install GoLang.Go
```

### 使用 Chocolatey
```powershell
choco install golang
```

### 驗證安裝
```powershell
go version
```

## 設定 Go 工作區

Go 使用工作區存放專案（Go 1.11+ 有 modules，可不受 GOPATH 限制）：
```bash
# 建立工作區（選用）
mkdir -p ~/go/{bin,src,pkg}

# 設定 GOPATH（寫入 ~/.profile、~/.bashrc 或 ~/.zshrc）
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

> 註：使用 Go modules 時，可在 GOPATH 之外開發。

## 執行 Hello World

```bash
# 進入 Go 目錄
cd languages/compiled/go

# 直接執行（不需預先編譯）
go run hello.go

# 或編譯後執行
go build hello.go
./hello
```

## Go Modules

較大的專案請使用 Go modules：
```bash
# 初始化模組
go mod init example.com/myproject

# 執行程式
go run .
```

## 官方文件

- [Go Official Website](https://go.dev/)
- [Go Documentation](https://go.dev/doc/)
- [A Tour of Go](https://go.dev/tour/)
- [Effective Go](https://go.dev/doc/effective_go)
- [Go by Example](https://gobyexample.com/)

