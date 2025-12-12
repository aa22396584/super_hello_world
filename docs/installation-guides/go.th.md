# คู่มือติดตั้ง Go

[English](go.md) | [繁體中文](go.zh-TW.md) | [简体中文](go.zh-CN.md) | [日本語](go.ja.md) | [한국어](go.ko.md) | [Bahasa Indonesia](go.id.md) | [ไทย](go.th.md)

Go (Golang) เป็นภาษาแบบ static type และคอมไพล์ เน้นความเรียบง่ายและประสิทธิภาพ

## macOS

### ใช้ Homebrew (แนะนำ)
```bash
brew install go
```

### ใช้ตัวติดตั้งทางการ
1. ดาวน์โหลดเวอร์ชันล่าสุดจาก [go.dev/dl](https://go.dev/dl/)  
2. รันไฟล์ `.pkg` ที่โหลดมา  
3. ทำตามวิซาร์ดเพื่อติดตั้ง  

### ตรวจสอบการติดตั้ง
```bash
go version
```

## Linux

### ใช้ไฟล์ไบนารีทางการ (แนะนำ)
```bash
# ดาวน์โหลดเวอร์ชันล่าสุด (ดูที่ go.dev/dl)
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

# ลบ Go เดิมและแตกไฟล์
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

# เพิ่ม Go เข้า PATH (เขียนใน ~/.profile หรือ ~/.bashrc)
export PATH=$PATH:/usr/local/go/bin

# โหลดคอนฟิกใหม่
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

### ตรวจสอบการติดตั้ง
```bash
go version
```

## Windows

### ใช้ตัวติดตั้งทางการ (แนะนำ)
1. ดาวน์โหลดไฟล์ `.msi` ล่าสุดจาก [go.dev/dl](https://go.dev/dl/)  
2. รันและทำตามวิซาร์ด  
3. ตัวติดตั้งจะเพิ่ม PATH ให้เอง  

### ใช้ winget
```powershell
winget install GoLang.Go
```

### ใช้ Chocolatey
```powershell
choco install golang
```

### ตรวจสอบการติดตั้ง
```powershell
go version
```

## ตั้งค่า workspace ของ Go

Go ใช้ workspace สำหรับโปรเจกต์ (ตั้งแต่ Go 1.11+ ใช้ modules ทำงานนอก GOPATH ได้):
```bash
# สร้าง workspace (ทางเลือก)
mkdir -p ~/go/{bin,src,pkg}

# ตั้ง GOPATH (เขียนใน ~/.profile, ~/.bashrc หรือ ~/.zshrc)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

> หมายเหตุ: เมื่อใช้ Go modules สามารถทำงานนอก GOPATH ได้

## รัน Hello World

```bash
# เข้าโฟลเดอร์ Go
cd languages/compiled/go

# รันโดยตรง (ไม่ต้องคอมไพล์ก่อน)
go run hello.go

# หรือคอมไพล์แล้วค่อยรัน
go build hello.go
./hello
```

## Go Modules

โปรเจกต์ขนาดใหญ่ควรใช้ Go modules:
```bash
# ตั้งค่าโมดูล
go mod init example.com/myproject

# รันโปรแกรม
go run .
```

## เอกสารทางการ

- [Go Official Website](https://go.dev/)
- [Go Documentation](https://go.dev/doc/)
- [A Tour of Go](https://go.dev/tour/)
- [Effective Go](https://go.dev/doc/effective_go)
- [Go by Example](https://gobyexample.com/)

