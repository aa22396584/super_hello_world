# Go 설치 가이드

[English](go.md) | [繁體中文](go.zh-TW.md) | [简体中文](go.zh-CN.md) | [日本語](go.ja.md) | [한국어](go.ko.md) | [Bahasa Indonesia](go.id.md) | [ไทย](go.th.md)

Go(Golang)은 정적 타입, 컴파일 언어로, 단순성과 효율을 중시합니다.

## macOS

### Homebrew 사용(권장)
```bash
brew install go
```

### 공식 설치 프로그램 사용
1. [go.dev/dl](https://go.dev/dl/) 에서 최신 버전 다운로드  
2. 받은 `.pkg` 실행  
3. 안내에 따라 설치 완료  

### 설치 확인
```bash
go version
```

## Linux

### 공식 바이너리 사용(권장)
```bash
# 최신 버전 다운로드 (go.dev/dl에서 버전 확인)
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz

# 이전 설치 제거 후 압축 해제
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

# PATH 추가 (~/.profile 또는 ~/.bashrc)
export PATH=$PATH:/usr/local/go/bin

# 설정 재적용
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

### 설치 확인
```bash
go version
```

## Windows

### 공식 설치 프로그램 사용(권장)
1. [go.dev/dl](https://go.dev/dl/) 에서 최신 `.msi` 다운로드  
2. 실행 후 마법사 안내에 따라 설치  
3. PATH 추가는 설치 프로그램이 자동 처리  

### winget 사용
```powershell
winget install GoLang.Go
```

### Chocolatey 사용
```powershell
choco install golang
```

### 설치 확인
```powershell
go version
```

## Go 작업공간 설정

Go는 워크스페이스를 사용합니다(Go 1.11+ modules 사용 시 GOPATH 밖도 가능):
```bash
# 워크스페이스 생성(선택)
mkdir -p ~/go/{bin,src,pkg}

# GOPATH 설정 (~/.profile, ~/.bashrc, ~/.zshrc 등에 추가)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

> 참고: Go modules 사용 시 GOPATH 외부에서 작업 가능.

## Hello World 실행

```bash
# Go 디렉터리로 이동
cd languages/compiled/go

# 바로 실행(빌드 불필요)
go run hello.go

# 또는 빌드 후 실행
go build hello.go
./hello
```

## Go Modules

규모 있는 프로젝트는 Go modules 사용:
```bash
# 모듈 초기화
go mod init example.com/myproject

# 실행
go run .
```

## 공식 문서

- [Go Official Website](https://go.dev/)
- [Go Documentation](https://go.dev/doc/)
- [A Tour of Go](https://go.dev/tour/)
- [Effective Go](https://go.dev/doc/effective_go)
- [Go by Example](https://gobyexample.com/)

