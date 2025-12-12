# Go インストールガイド

[English](go.md) | [繁體中文](go.zh-TW.md) | [简体中文](go.zh-CN.md) | [日本語](go.ja.md) | [한국어](go.ko.md) | [Bahasa Indonesia](go.id.md) | [ไทย](go.th.md)

Go（Golang）は静的型付け・コンパイル型の言語で、シンプルさと効率性を重視しています。

## macOS

### Homebrew を使う（推奨）
```bash
brew install go
```

### 公式インストーラを使う
1. [go.dev/dl](https://go.dev/dl/) から最新版をダウンロード  
2. ダウンロードした `.pkg` を実行  
3. ウィザードに従ってインストール  

### インストール確認
```bash
go version
```

## Linux

### 公式バイナリを使う（推奨）
```bash
# 最新版を取得（バージョンは go.dev/dl で確認）
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

# 旧版を削除して展開
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

# PATH に追加（~/.profile や ~/.bashrc へ）
export PATH=$PATH:/usr/local/go/bin

# 設定を再読み込み
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

### インストール確認
```bash
go version
```

## Windows

### 公式インストーラを使う（推奨）
1. [go.dev/dl](https://go.dev/dl/) から最新版 `.msi` をダウンロード  
2. 実行し、ウィザードに従う  
3. PATH への追加はインストーラが自動で実施  

### winget を使う
```powershell
winget install GoLang.Go
```

### Chocolatey を使う
```powershell
choco install golang
```

### インストール確認
```powershell
go version
```

## Go ワークスペース設定

Go はワークスペースを使います（Go 1.11+ の modules なら GOPATH 外でも可）:
```bash
# ワークスペース作成（任意）
mkdir -p ~/go/{bin,src,pkg}

# GOPATH 設定（~/.profile, ~/.bashrc, ~/.zshrc などへ）
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

> 注: Go modules を使えば GOPATH 外で開発できます。

## Hello World を実行

```bash
# Go ディレクトリへ移動
cd languages/compiled/go

# そのまま実行（ビルド不要）
go run hello.go

# もしくはビルドして実行
go build hello.go
./hello
```

## Go Modules

規模が大きい場合は Go modules を利用:
```bash
# モジュール初期化
go mod init example.com/myproject

# 実行
go run .
```

## 公式ドキュメント

- [Go Official Website](https://go.dev/)
- [Go Documentation](https://go.dev/doc/)
- [A Tour of Go](https://go.dev/tour/)
- [Effective Go](https://go.dev/doc/effective_go)
- [Go by Example](https://gobyexample.com/)

