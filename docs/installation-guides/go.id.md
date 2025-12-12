# Panduan Instalasi Go

[English](go.md) | [繁體中文](go.zh-TW.md) | [简体中文](go.zh-CN.md) | [日本語](go.ja.md) | [한국어](go.ko.md) | [Bahasa Indonesia](go.id.md) | [ไทย](go.th.md)

Go (Golang) adalah bahasa berjenis statis dan dikompilasi, dirancang untuk sederhana dan efisien.

## macOS

### Menggunakan Homebrew (Disarankan)
```bash
brew install go
```

### Menggunakan installer resmi
1. Unduh versi terbaru dari [go.dev/dl](https://go.dev/dl/)  
2. Jalankan berkas `.pkg`  
3. Ikuti wizard instalasi  

### Verifikasi instalasi
```bash
go version
```

## Linux

### Menggunakan binary resmi (Disarankan)
```bash
# Unduh versi terbaru (cek go.dev/dl)
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

# Hapus instalasi lama dan ekstrak
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

# Tambahkan Go ke PATH (tulis ke ~/.profile atau ~/.bashrc)
export PATH=$PATH:/usr/local/go/bin

# Muat ulang konfigurasi shell
source ~/.profile
```

### Ubuntu/Debian (snap)
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

### Verifikasi instalasi
```bash
go version
```

## Windows

### Menggunakan installer resmi (Disarankan)
1. Unduh `.msi` terbaru dari [go.dev/dl](https://go.dev/dl/)  
2. Jalankan dan ikuti wizard  
3. PATH akan diset otomatis oleh installer  

### Menggunakan winget
```powershell
winget install GoLang.Go
```

### Menggunakan Chocolatey
```powershell
choco install golang
```

### Verifikasi instalasi
```powershell
go version
```

## Menyiapkan workspace Go

Go memakai workspace untuk proyek (Go 1.11+ modules dapat bekerja di luar GOPATH):
```bash
# Membuat workspace (opsional)
mkdir -p ~/go/{bin,src,pkg}

# Set GOPATH (tulis di ~/.profile, ~/.bashrc, atau ~/.zshrc)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

> Catatan: dengan Go modules, Anda boleh bekerja di luar GOPATH.

## Menjalankan Hello World

```bash
# Masuk ke direktori Go
cd languages/compiled/go

# Jalankan langsung (tanpa kompilasi)
go run hello.go

# Atau kompilasi dan jalankan
go build hello.go
./hello
```

## Go Modules

Untuk proyek lebih besar, gunakan Go modules:
```bash
# Inisialisasi modul
go mod init example.com/myproject

# Jalankan program
go run .
```

## Dokumentasi resmi

- [Go Official Website](https://go.dev/)
- [Go Documentation](https://go.dev/doc/)
- [A Tour of Go](https://go.dev/tour/)
- [Effective Go](https://go.dev/doc/effective_go)
- [Go by Example](https://gobyexample.com/)

