# 다국어 Hello World 컬렉션

[English](README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Bahasa Indonesia](README.id.md) | [ไทย](README.th.md)

60개 이상의 프로그래밍 언어로 작성된 `Hello, World!` 예제를 모았습니다. 패러다임과 분류별로 정리해 문법과 실행 방법을 비교할 수 있습니다.

## 🌟 개요

- 컴파일 언어, 인터프리터 언어, 함수형, 스크립트, 기타 분야를 포함
- 각 언어별로 주석이 있는 소스와 전용 README 제공
- 자동화 테스트로 출력 `Hello, World!`를 검증
- 전체 언어 목록과 실행 명령은 영어 README를 참고하세요

## 🚀 빠른 시작

통합 스크립트로 원하는 언어를 실행합니다.

```bash
# 특정 언어 실행
./run.sh python

# 전체 이름으로 실행
./run.sh "C++"

# 목록 조회
./run.sh --list
./run.sh --category compiled

# 전체 실행 (환경 필요)
./run.sh --all
```

## 🧪 테스트 실행

```bash
# 전체 테스트
./test.sh

# 언어 또는 카테고리 지정
./test.sh rust
./test.sh --category functional

# 설치된 언어만 테스트
./test.sh --available-only

# 자세한 로그
./test.sh --verbose
```

## 🗂 프로젝트 구조

```
multi-language-hello-world/
├── README.md         # 영어
├── README.ko.md      # 한국어
├── README.zh-CN.md   # 중국어(간체)
├── README.zh-TW.md   # 중국어(번체)
├── README.ja.md      # 일본어
├── languages.json    # 언어 메타데이터
├── run.sh            # 실행 스크립트
├── test.sh           # 테스트 스크립트
├── languages/        # 각 언어 구현
└── docs/             # 설치 가이드 등
```

## 🤝 기여 방법

1) 카테고리 폴더에 디렉터리 생성 후 `hello.{ext}` 추가  
2) 설치/실행 방법을 담은 README 작성  
3) `languages.json`에 메타데이터 추가  
4) `./test.sh your-language`로 검증  

자세한 내용은 `CONTRIBUTING.md`를 참고하세요.

## 🎯 목표

- 다양한 언어 문법을 배우기 위한 빠른 참고서
- 동일 작업을 여러 언어로 비교
- 항상 실행 가능하고 테스트된 상태 유지

## 📝 라이선스

교육 및 학습 목적으로 자유롭게 사용할 수 있는 오픈소스입니다.

## 🔗 자료

- 설치 가이드: `docs/installation-guides/`
- 언어 비교: `docs/language-comparison.md`
- 기여 가이드: `CONTRIBUTING.md`

