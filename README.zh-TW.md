# 多語言 Hello World 集合

> **為什麼會有這個倉庫？** 原 GitHub 帳號 [`ImL1s`](https://github.com/ImL1s) 目前被限制（匿名瀏覽會 404），開發已搬到 [`aa22396584/super_hello_world`](https://github.com/aa22396584/super_hello_world)。這是同一個專案，Issues / PR 請開在這裡。

**開發、Issues 與 PR：** https://github.com/aa22396584/super_hello_world  
**鏡像：** [GitLab](https://gitlab.com/aa22396584/super_hello_world) · [Codeberg](https://codeberg.org/ImL1s/super_hello_world)


[English](README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Bahasa Indonesia](README.id.md) | [ไทย](README.th.md)

一個涵蓋 60 多種程式語言的「Hello, World!」實作集合，按範式和類別組織。本專案作為學習資源，用於比較不同程式語言的語法和執行方式。

## 🌟 概覽

本儲存庫包含超過 60 種程式語言的可運行 Hello World 程式，包括：
- **編譯型語言**：C、C++、Rust、Go、Swift、Kotlin 等
- **解釋型語言**：Python、JavaScript、Ruby、PHP、Perl 等
- **函數式語言**：Haskell、OCaml、Erlang、Elixir、Clojure 等
- **腳本語言**：Bash、TypeScript、PowerShell、AWK 等
- **特殊用途語言**：Java、Scala、SQL、Assembly、COBOL 等

每個實作包含：
- ✅ 帶有說明註解的原始碼
- ✅ 包含安裝和執行說明的獨立 README
- ✅ 自動化測試以驗證正確輸出

## 🚀 快速開始

### 執行特定語言

使用統一的執行腳本來執行任何語言：

```bash
# 執行特定語言
./run.sh python

# 使用完整語言名稱執行
./run.sh "C++"

# 列出所有可用語言
./run.sh --list

# 按類別列出語言
./run.sh --category compiled

# 執行所有語言（需要安裝所有運行環境）
./run.sh --all
```

### 執行測試

使用自動化測試套件驗證所有實作：

```bash
# 測試所有語言
./test.sh

# 測試特定語言
./test.sh rust

# 按類別測試
./test.sh --category functional

# 僅測試已安裝運行環境的語言
./test.sh --available-only

# 詳細輸出
./test.sh --verbose
```

### 手動執行

您也可以手動執行語言。例如：

**解釋型語言（Python）：**
```bash
cd languages/interpreted/python
python3 hello.py
```

**編譯型語言（C）：**
```bash
cd languages/compiled/c
gcc hello.c -o hello
./hello
```

## 📚 支援的語言

| 語言 | 類別 | 檔案 | 執行指令 | 官方文檔 |
|------|------|------|----------|----------|
| Ada | compiled | [languages/compiled/ada/hello.adb](languages/compiled/ada/hello.adb) | `gnatmake hello.adb && ./hello` | [連結](https://www.adaic.org/) |
| APL | interpreted | [languages/interpreted/apl/hello.apl](languages/interpreted/apl/hello.apl) | `dyalog hello.apl` | [連結](https://www.dyalog.com/) |
| Assembly | other | [languages/other/assembly/hello.asm](languages/other/assembly/hello.asm) | `nasm -f elf64 hello.asm -o hello.o && ld hello.o -o hello && ./hello` | [連結](https://www.nasm.us/docs.php) |
| AWK | scripting | [languages/scripting/awk/hello.awk](languages/scripting/awk/hello.awk) | `awk -f hello.awk` | [連結](https://www.gnu.org/software/gawk/manual/) |
| Bash | scripting | [languages/scripting/bash/hello.sh](languages/scripting/bash/hello.sh) | `bash hello.sh` | [連結](https://www.gnu.org/software/bash/manual/) |
| C | compiled | [languages/compiled/c/hello.c](languages/compiled/c/hello.c) | `gcc hello.c -o hello && ./hello` | [連結](https://en.cppreference.com/w/c) |
| C# | compiled | [languages/compiled/csharp/hello.cs](languages/compiled/csharp/hello.cs) | `csc hello.cs && ./hello.exe` | [連結](https://docs.microsoft.com/en-us/dotnet/csharp/) |
| C++ | compiled | [languages/compiled/cpp/hello.cpp](languages/compiled/cpp/hello.cpp) | `g++ hello.cpp -o hello && ./hello` | [連結](https://en.cppreference.com/w/cpp) |
| Clojure | functional | [languages/functional/clojure/hello.clj](languages/functional/clojure/hello.clj) | `clojure hello.clj` | [連結](https://clojure.org/reference/documentation) |
| COBOL | other | [languages/other/cobol/hello.cob](languages/other/cobol/hello.cob) | `cobc -x hello.cob -o hello && ./hello` | [連結](https://gnucobol.sourceforge.io/) |
| Common Lisp | functional | [languages/functional/commonlisp/hello.lisp](languages/functional/commonlisp/hello.lisp) | `sbcl --script hello.lisp` | [連結](https://common-lisp.net/) |
| Crystal | compiled | [languages/compiled/crystal/hello.cr](languages/compiled/crystal/hello.cr) | `crystal build hello.cr && ./hello` | [連結](https://crystal-lang.org/docs/) |
| D | compiled | [languages/compiled/d/hello.d](languages/compiled/d/hello.d) | `dmd hello.d && ./hello` | [連結](https://dlang.org/) |
| Dart | other | [languages/other/dart/hello.dart](languages/other/dart/hello.dart) | `dart hello.dart` | [連結](https://dart.dev/guides) |
| Elixir | functional | [languages/functional/elixir/hello.ex](languages/functional/elixir/hello.ex) | `elixir hello.ex` | [連結](https://hexdocs.pm/elixir/) |
| Elm | other | [languages/other/elm/hello.elm](languages/other/elm/hello.elm) | `elm make hello.elm` | [連結](https://guide.elm-lang.org/) |
| Erlang | functional | [languages/functional/erlang/hello.erl](languages/functional/erlang/hello.erl) | `erlc hello.erl && erl -noshell -s hello main -s init stop` | [連結](https://www.erlang.org/docs) |
| F# | functional | [languages/functional/fsharp/hello.fs](languages/functional/fsharp/hello.fs) | `dotnet fsi hello.fs` | [連結](https://docs.microsoft.com/en-us/dotnet/fsharp/) |
| Fish | scripting | [languages/scripting/fish/hello.fish](languages/scripting/fish/hello.fish) | `fish hello.fish` | [連結](https://fishshell.com/) |
| Forth | other | [languages/other/forth/hello.fth](languages/other/forth/hello.fth) | `gforth hello.fth` | [連結](https://www.complang.tuwien.ac.at/forth/gforth/Docs-html/) |
| Fortran | other | [languages/other/fortran/hello.f90](languages/other/fortran/hello.f90) | `gfortran hello.f90 -o hello && ./hello` | [連結](https://fortran-lang.org/learn/) |
| Go | compiled | [languages/compiled/go/hello.go](languages/compiled/go/hello.go) | `go build hello.go && ./hello` | [連結](https://go.dev/doc/) |
| Groovy | interpreted | [languages/interpreted/groovy/hello.groovy](languages/interpreted/groovy/hello.groovy) | `groovy hello.groovy` | [連結](https://groovy-lang.org/documentation.html) |
| Haskell | functional | [languages/functional/haskell/hello.hs](languages/functional/haskell/hello.hs) | `runhaskell hello.hs` | [連結](https://www.haskell.org/documentation/) |
| J | interpreted | [languages/interpreted/j/hello.ijs](languages/interpreted/j/hello.ijs) | `jconsole hello.ijs` | [連結](https://www.jsoftware.com/) |
| Java | other | [languages/other/java/Hello.java](languages/other/java/Hello.java) | `javac Hello.java && java Hello` | [連結](https://docs.oracle.com/en/java/) |
| JavaScript | interpreted | [languages/interpreted/javascript/hello.js](languages/interpreted/javascript/hello.js) | `node hello.js` | [連結](https://developer.mozilla.org/en-US/docs/Web/JavaScript) |
| Julia | interpreted | [languages/interpreted/julia/hello.jl](languages/interpreted/julia/hello.jl) | `julia hello.jl` | [連結](https://docs.julialang.org/) |
| Kotlin | compiled | [languages/compiled/kotlin/hello.kt](languages/compiled/kotlin/hello.kt) | `kotlinc hello.kt -include-runtime -d hello.jar && java -jar hello.jar` | [連結](https://kotlinlang.org/docs/) |
| Lua | interpreted | [languages/interpreted/lua/hello.lua](languages/interpreted/lua/hello.lua) | `lua hello.lua` | [連結](https://www.lua.org/manual/) |
| MATLAB | other | [languages/other/matlab/hello.m](languages/other/matlab/hello.m) | `octave hello.m` | [連結](https://www.mathworks.com/help/matlab/) |
| Nim | compiled | [languages/compiled/nim/hello.nim](languages/compiled/nim/hello.nim) | `nim c hello.nim && ./hello` | [連結](https://nim-lang.org/documentation.html) |
| Objective-C | compiled | [languages/compiled/objc/hello.m](languages/compiled/objc/hello.m) | `clang -framework Foundation hello.m -o hello && ./hello` | [連結](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/) |
| OCaml | functional | [languages/functional/ocaml/hello.ml](languages/functional/ocaml/hello.ml) | `ocaml hello.ml` | [連結](https://ocaml.org/docs) |
| Odin | compiled | [languages/compiled/odin/hello.odin](languages/compiled/odin/hello.odin) | `odin build hello.odin -file && ./hello` | [連結](https://odin-lang.org/docs/) |
| Pascal | other | [languages/other/pascal/hello.pas](languages/other/pascal/hello.pas) | `fpc hello.pas && ./hello` | [連結](https://www.freepascal.org/docs.html) |
| Perl | interpreted | [languages/interpreted/perl/hello.pl](languages/interpreted/perl/hello.pl) | `perl hello.pl` | [連結](https://perldoc.perl.org/) |
| PHP | interpreted | [languages/interpreted/php/hello.php](languages/interpreted/php/hello.php) | `php hello.php` | [連結](https://www.php.net/docs.php) |
| PowerShell | scripting | [languages/scripting/powershell/hello.ps1](languages/scripting/powershell/hello.ps1) | `pwsh hello.ps1` | [連結](https://docs.microsoft.com/en-us/powershell/) |
| Prolog | other | [languages/other/prolog/hello.pl](languages/other/prolog/hello.pl) | `swipl -s hello.pl` | [連結](https://www.swi-prolog.org/pldoc/index.html) |
| PureScript | other | [languages/other/purescript/hello.purs](languages/other/purescript/hello.purs) | `spago run` | [連結](https://book.purescript.org/) |
| Python | interpreted | [languages/interpreted/python/hello.py](languages/interpreted/python/hello.py) | `python3 hello.py` | [連結](https://docs.python.org/3/) |
| R | interpreted | [languages/interpreted/r/hello.r](languages/interpreted/r/hello.r) | `Rscript hello.r` | [連結](https://cran.r-project.org/manuals.html) |
| Racket | functional | [languages/functional/racket/hello.rkt](languages/functional/racket/hello.rkt) | `racket hello.rkt` | [連結](https://docs.racket-lang.org/) |
| Ruby | interpreted | [languages/interpreted/ruby/hello.rb](languages/interpreted/ruby/hello.rb) | `ruby hello.rb` | [連結](https://www.ruby-lang.org/en/documentation/) |
| Rust | compiled | [languages/compiled/rust/hello.rs](languages/compiled/rust/hello.rs) | `rustc hello.rs -o hello && ./hello` | [連結](https://doc.rust-lang.org/) |
| Scala | other | [languages/other/scala/hello.scala](languages/other/scala/hello.scala) | `scalac hello.scala && scala Hello` | [連結](https://docs.scala-lang.org/) |
| Scheme | functional | [languages/functional/scheme/hello.scm](languages/functional/scheme/hello.scm) | `guile hello.scm` | [連結](https://www.scheme.org/) |
| Sed | scripting | [languages/scripting/sed/hello.sed](languages/scripting/sed/hello.sed) | `sed -f hello.sed < /dev/null` | [連結](https://www.gnu.org/software/sed/manual/) |
| Smalltalk | interpreted | [languages/interpreted/smalltalk/hello.st](languages/interpreted/smalltalk/hello.st) | `gst hello.st` | [連結](https://www.gnu.org/software/smalltalk/) |
| SQL | other | [languages/other/sql/hello.sql](languages/other/sql/hello.sql) | `sqlite3 < hello.sql` | [連結](https://www.sqlite.org/docs.html) |
| Standard ML | other | [languages/other/sml/hello.sml](languages/other/sml/hello.sml) | `sml hello.sml` | [連結](https://www.smlnj.org/doc/) |
| Swift | compiled | [languages/compiled/swift/hello.swift](languages/compiled/swift/hello.swift) | `swiftc hello.swift -o hello && ./hello` | [連結](https://swift.org/documentation/) |
| Tcl | interpreted | [languages/interpreted/tcl/hello.tcl](languages/interpreted/tcl/hello.tcl) | `tclsh hello.tcl` | [連結](https://www.tcl.tk/man/) |
| TypeScript | scripting | [languages/scripting/typescript/hello.ts](languages/scripting/typescript/hello.ts) | `ts-node hello.ts` | [連結](https://www.typescriptlang.org/docs/) |
| V | compiled | [languages/compiled/v/hello.v](languages/compiled/v/hello.v) | `v hello.v && ./hello` | [連結](https://github.com/vlang/v/blob/master/doc/docs.md) |
| Visual Basic | other | [languages/other/vb/hello.vb](languages/other/vb/hello.vb) | `vbc hello.vb && mono hello.exe` | [連結](https://docs.microsoft.com/en-us/dotnet/visual-basic/) |
| Zig | compiled | [languages/compiled/zig/hello.zig](languages/compiled/zig/hello.zig) | `zig build-exe hello.zig && ./hello` | [連結](https://ziglang.org/documentation/) |
| Zsh | scripting | [languages/scripting/zsh/hello.zsh](languages/scripting/zsh/hello.zsh) | `zsh hello.zsh` | [連結](https://www.zsh.org/) |

**總計：60 種語言**

## 📖 使用指南

### 理解專案結構

```
multi-language-hello-world/
├── README.md                    # 英文說明文件
├── README.zh-TW.md              # 繁體中文說明文件
├── languages.json               # 語言元數據和配置
├── run.sh                       # 統一執行腳本
├── test.sh                      # 自動化測試腳本
├── CONTRIBUTING.md              # 添加新語言的指南
├── languages/                   # 所有語言實作
│   ├── compiled/               # 編譯型語言（C、C++、Rust、Go 等）
│   ├── interpreted/            # 解釋型語言（Python、Ruby、PHP 等）
│   ├── functional/             # 函數式語言（Haskell、OCaml、Erlang 等）
│   ├── scripting/              # 腳本語言（Bash、PowerShell、AWK 等）
│   └── other/                  # 特殊用途語言（Java、SQL、Assembly 等）
└── docs/                       # 額外文檔
    ├── installation-guides/    # 各語言的安裝指南
    └── language-comparison.md  # 語言比較參考
```

每個語言目錄包含：
- **hello.{ext}**：帶有說明註解的 Hello World 實作
- **README.md**：語言特定的安裝和執行說明

### 執行測試套件

自動化測試套件驗證所有實作是否產生正確輸出：

```bash
# 執行所有測試
./test.sh

# 測試特定語言
./test.sh python

# 按類別測試
./test.sh --category functional

# 僅測試已安裝運行環境的語言
./test.sh --available-only

# 顯示詳細輸出
./test.sh --verbose
```

**測試輸出範例：**
```
測試 60 種語言...
✓ Python: Hello, World!
✓ JavaScript: Hello, World!
✓ Rust: Hello, World!
✗ Haskell: 未安裝運行環境
...
摘要：58/60 通過（2 個跳過 - 未安裝運行環境）
```

### 安裝需求

要執行所有語言，您需要安裝相應的運行環境/編譯器。查看 `docs/installation-guides/` 中的安裝指南以獲取詳細說明。

**常見需求：**
- **編譯型語言**：gcc、g++、rustc、go 等
- **解釋型語言**：python3、node、ruby、php 等
- **函數式語言**：ghc、ocaml、erlang、elixir 等
- **腳本語言**：bash、zsh、pwsh 等

如果未安裝運行環境，腳本將顯示有用的錯誤訊息和安裝指南連結。

## 🤝 貢獻

我們歡迎貢獻！以下是添加新語言的方法：

### 添加新語言

1. **建立目錄結構：**
   ```bash
   mkdir -p languages/{category}/{language-name}
   cd languages/{category}/{language-name}
   ```

2. **建立 Hello World 實作：**
   - 檔案名稱：`hello.{extension}`
   - 必須輸出：`Hello, World!`
   - 包含關於語法的說明註解

3. **建立 README.md：**
   ```markdown
   # {語言名稱} Hello World
   
   ## 描述
   語言的簡要描述
   
   ## 安裝
   如何安裝語言運行環境/編譯器
   
   ## 執行
   如何執行程式
   ```

4. **更新 languages.json：**
   添加包含語言元數據的條目：
   ```json
   {
     "name": "YourLanguage",
     "category": "compiled|interpreted|functional|scripting|other",
     "file": "languages/{category}/{language}/hello.{ext}",
     "extension": ".{ext}",
     "runCommand": "command {file}",
     "compileCommand": "compile-command {file}" 或 null,
     "version": "版本資訊",
     "officialDocs": "https://...",
     "installGuide": "docs/installation-guides/{language}.md"
   }
   ```

5. **測試您的實作：**
   ```bash
   ./test.sh your-language
   ```

6. **提交 pull request** 包含您的變更

### 程式碼風格指南

- 使用每種語言的慣用程式碼
- 包含清晰的說明註解
- 遵循語言的標準格式化慣例
- 確保輸出完全是 `Hello, World!`（帶逗號和驚嘆號）

### 新語言檢查清單

- [ ] 已建立具有正確副檔名的實作檔案
- [ ] 程式碼包含說明註解
- [ ] 輸出完全是 "Hello, World!"
- [ ] README.md 完整，包含安裝和執行說明
- [ ] languages.json 已更新為正確的元數據
- [ ] 測試通過：`./test.sh your-language`
- [ ] 已建立安裝指南（可選但建議）

更多詳情，請參閱 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 📊 語言類別

- **編譯型（15）**：需要編譯才能執行的語言
- **解釋型（12）**：直接由解釋器執行的語言
- **函數式（9）**：強調函數式程式設計範式的語言
- **腳本（7）**：主要用於腳本編寫和自動化的語言
- **其他（17）**：特殊用途語言和不適合其他類別的語言

## 🎯 專案目標

1. **教育資源**：提供學習程式語言語法的綜合參考
2. **語言比較**：實現不同語言如何處理相同任務的並排比較
3. **快速參考**：作為開發人員探索新語言的快速入門指南
4. **自動化測試**：確保所有實作正確且最新

## 📝 授權

本專案是開源的，可用於教育目的。

## 🔗 額外資源

- [安裝指南](docs/installation-guides/) - 每種語言的詳細安裝說明
- [語言比較](docs/language-comparison.md) - 語言特性的比較分析
- [貢獻指南](CONTRIBUTING.md) - 如何向集合添加新語言

## 🙏 致謝

本專案展示了程式語言的多樣性和豐富性。每種語言都有自己的哲學、優勢和使用案例。我們鼓勵您探索和學習這個集合！

---

**祝編程愉快！🚀**
