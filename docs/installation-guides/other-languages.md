# Other Languages Installation Guide

This guide provides installation instructions and official documentation links for additional programming languages in this repository.

## Compiled Languages

### C# (CSharp)
**Installation:**
- Install .NET SDK from [dotnet.microsoft.com](https://dotnet.microsoft.com/download)
- macOS: `brew install dotnet`
- Linux: Follow [Microsoft's guide](https://learn.microsoft.com/en-us/dotnet/core/install/linux)
- Windows: Download installer from Microsoft

**Run:** `dotnet run` or `csc hello.cs && ./hello.exe`

**Documentation:** [docs.microsoft.com/dotnet](https://docs.microsoft.com/en-us/dotnet/)

---

### Swift
**Installation:**
- macOS: Included with Xcode (`xcode-select --install`)
- Linux: [swift.org/download](https://swift.org/download/)
- Windows: [swift.org/download](https://swift.org/download/)

**Run:** `swift hello.swift` or `swiftc hello.swift && ./hello`

**Documentation:** [swift.org/documentation](https://swift.org/documentation/)

---

### Kotlin
**Installation:**
- Install via SDKMAN: `sdk install kotlin`
- macOS: `brew install kotlin`
- Or download from [kotlinlang.org](https://kotlinlang.org/)

**Run:** `kotlinc hello.kt -include-runtime -d hello.jar && java -jar hello.jar`

**Documentation:** [kotlinlang.org/docs](https://kotlinlang.org/docs/)

---

### Objective-C
**Installation:**
- macOS: Included with Xcode Command Line Tools
- Linux: Install GNUstep
- Windows: Not commonly used

**Run:** `clang hello.m -framework Foundation -o hello && ./hello`

**Documentation:** [developer.apple.com/documentation/objectivec](https://developer.apple.com/documentation/objectivec)

---

### D
**Installation:**
- Download from [dlang.org](https://dlang.org/download.html)
- macOS: `brew install dmd`
- Linux: `curl -fsS https://dlang.org/install.sh | bash -s dmd`

**Run:** `dmd hello.d && ./hello`

**Documentation:** [dlang.org/documentation](https://dlang.org/documentation.html)

---

### Nim
**Installation:**
- Download from [nim-lang.org](https://nim-lang.org/install.html)
- macOS: `brew install nim`
- Linux: `curl https://nim-lang.org/choosenim/init.sh -sSf | sh`

**Run:** `nim c -r hello.nim`

**Documentation:** [nim-lang.org/docs](https://nim-lang.org/documentation.html)

---

### Crystal
**Installation:**
- macOS: `brew install crystal`
- Linux: Follow [crystal-lang.org/install](https://crystal-lang.org/install/)
- Windows: Use WSL

**Run:** `crystal hello.cr` or `crystal build hello.cr && ./hello`

**Documentation:** [crystal-lang.org/docs](https://crystal-lang.org/reference/)

---

### Zig
**Installation:**
- Download from [ziglang.org/download](https://ziglang.org/download/)
- macOS: `brew install zig`
- Linux: Extract tarball and add to PATH

**Run:** `zig run hello.zig`

**Documentation:** [ziglang.org/documentation](https://ziglang.org/documentation/master/)

---

### V
**Installation:**
- Clone and build: `git clone https://github.com/vlang/v && cd v && make`
- macOS: `brew install vlang`

**Run:** `v run hello.v`

**Documentation:** [vlang.io](https://vlang.io/)

---

### Odin
**Installation:**
- Download from [odin-lang.org](https://odin-lang.org/docs/install/)
- Build from source on GitHub

**Run:** `odin run hello.odin`

**Documentation:** [odin-lang.org/docs](https://odin-lang.org/docs/)

---

### Ada
**Installation:**
- Install GNAT: [adacore.com/download](https://www.adacore.com/download)
- macOS: `brew install gcc` (includes GNAT)
- Linux: `sudo apt install gnat`

**Run:** `gnatmake hello.adb && ./hello`

**Documentation:** [learn.adacore.com](https://learn.adacore.com/)

---

## Interpreted Languages

### Perl
**Installation:**
- macOS/Linux: Usually pre-installed
- Windows: [strawberryperl.com](http://strawberryperl.com/)
- `brew install perl` (macOS)

**Run:** `perl hello.pl`

**Documentation:** [perldoc.perl.org](https://perldoc.perl.org/)

---

### Lua
**Installation:**
- macOS: `brew install lua`
- Linux: `sudo apt install lua5.4`
- Windows: [luabinaries.sourceforge.net](http://luabinaries.sourceforge.net/)

**Run:** `lua hello.lua`

**Documentation:** [lua.org/manual](https://www.lua.org/manual/)

---

### R
**Installation:**
- Download from [r-project.org](https://www.r-project.org/)
- macOS: `brew install r`
- Linux: `sudo apt install r-base`

**Run:** `Rscript hello.r`

**Documentation:** [r-project.org/other-docs](https://www.r-project.org/other-docs.html)

---

### Julia
**Installation:**
- Download from [julialang.org/downloads](https://julialang.org/downloads/)
- macOS: `brew install julia`
- Linux: `sudo snap install julia --classic`

**Run:** `julia hello.jl`

**Documentation:** [docs.julialang.org](https://docs.julialang.org/)

---

### Tcl
**Installation:**
- macOS: `brew install tcl-tk`
- Linux: `sudo apt install tcl`
- Windows: [tcl.tk/software](https://www.tcl.tk/software/)

**Run:** `tclsh hello.tcl`

**Documentation:** [tcl.tk/doc](https://www.tcl.tk/doc/)

---

### Groovy
**Installation:**
- Install via SDKMAN: `sdk install groovy`
- macOS: `brew install groovy`
- Download from [groovy-lang.org](https://groovy-lang.org/download.html)

**Run:** `groovy hello.groovy`

**Documentation:** [groovy-lang.org/documentation](https://groovy-lang.org/documentation.html)

---

### Smalltalk
**Installation:**
- Install GNU Smalltalk: `brew install gnu-smalltalk` (macOS)
- Linux: `sudo apt install gnu-smalltalk`
- Or use Pharo/Squeak from [pharo.org](https://pharo.org/)

**Run:** `gst hello.st`

**Documentation:** [gnu.org/software/smalltalk](https://www.gnu.org/software/smalltalk/)

---

### APL
**Installation:**
- Install Dyalog APL from [dyalog.com](https://www.dyalog.com/download-zone.htm)
- Or GNU APL: `brew install gnu-apl` (macOS)

**Run:** `apl hello.apl`

**Documentation:** [dyalog.com/documentation](https://www.dyalog.com/documentation.htm)

---

### J
**Installation:**
- Download from [jsoftware.com](https://www.jsoftware.com/download.htm)
- macOS: `brew install j`

**Run:** `jconsole hello.ijs`

**Documentation:** [jsoftware.com/help](https://www.jsoftware.com/help/dictionary/contents.htm)

---

## Functional Languages

### OCaml
**Installation:**
- Install opam: `bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"`
- macOS: `brew install opam`
- Then: `opam init && opam install ocaml`

**Run:** `ocaml hello.ml` or `ocamlc hello.ml -o hello && ./hello`

**Documentation:** [ocaml.org/docs](https://ocaml.org/docs)

---

### F# (FSharp)
**Installation:**
- Install .NET SDK (includes F#)
- See C# installation above

**Run:** `dotnet fsi hello.fs` or `fsharpc hello.fs && mono hello.exe`

**Documentation:** [fsharp.org/learn](https://fsharp.org/learn/)

---

### Erlang
**Installation:**
- macOS: `brew install erlang`
- Linux: `sudo apt install erlang`
- Windows: [erlang.org/downloads](https://www.erlang.org/downloads)

**Run:** `escript hello.erl`

**Documentation:** [erlang.org/doc](https://www.erlang.org/doc/)

---

### Elixir
**Installation:**
- Requires Erlang first
- macOS: `brew install elixir`
- Linux: `sudo apt install elixir`

**Run:** `elixir hello.ex`

**Documentation:** [elixir-lang.org/docs](https://elixir-lang.org/docs.html)

---

### Clojure
**Installation:**
- Install Java first
- macOS: `brew install clojure`
- Linux: Follow [clojure.org/guides/install_clojure](https://clojure.org/guides/install_clojure)

**Run:** `clojure hello.clj`

**Documentation:** [clojure.org/guides](https://clojure.org/guides/getting_started)

---

### Racket
**Installation:**
- Download from [racket-lang.org](https://racket-lang.org/download/)
- macOS: `brew install racket`
- Linux: `sudo apt install racket`

**Run:** `racket hello.rkt`

**Documentation:** [docs.racket-lang.org](https://docs.racket-lang.org/)

---

### Scheme
**Installation:**
- Install MIT Scheme, Guile, or Chicken Scheme
- macOS: `brew install mit-scheme`
- Linux: `sudo apt install mit-scheme`

**Run:** `scheme --quiet < hello.scm`

**Documentation:** [schemers.org](http://www.schemers.org/)

---

### Common Lisp
**Installation:**
- Install SBCL: `brew install sbcl` (macOS)
- Linux: `sudo apt install sbcl`
- Or use CLISP, CCL, etc.

**Run:** `sbcl --script hello.lisp`

**Documentation:** [common-lisp.net](https://common-lisp.net/)

---

## Scripting Languages

### Bash
**Installation:**
- macOS/Linux: Pre-installed
- Windows: Use Git Bash or WSL

**Run:** `bash hello.sh`

**Documentation:** [gnu.org/software/bash/manual](https://www.gnu.org/software/bash/manual/)

---

### Zsh
**Installation:**
- macOS: Default shell (macOS 10.15+)
- Linux: `sudo apt install zsh`

**Run:** `zsh hello.zsh`

**Documentation:** [zsh.sourceforge.io](https://zsh.sourceforge.io/Doc/)

---

### PowerShell
**Installation:**
- Windows: Pre-installed
- macOS/Linux: `brew install powershell` or [docs.microsoft.com/powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell)

**Run:** `pwsh hello.ps1`

**Documentation:** [docs.microsoft.com/powershell](https://docs.microsoft.com/en-us/powershell/)

---

### Fish
**Installation:**
- macOS: `brew install fish`
- Linux: `sudo apt install fish`

**Run:** `fish hello.fish`

**Documentation:** [fishshell.com/docs](https://fishshell.com/docs/current/)

---

### Awk
**Installation:**
- macOS/Linux: Pre-installed (GNU Awk)
- Windows: Use Git Bash or install gawk

**Run:** `awk -f hello.awk`

**Documentation:** [gnu.org/software/gawk/manual](https://www.gnu.org/software/gawk/manual/)

---

### Sed
**Installation:**
- macOS/Linux: Pre-installed
- Windows: Use Git Bash

**Run:** `sed -f hello.sed /dev/null`

**Documentation:** [gnu.org/software/sed/manual](https://www.gnu.org/software/sed/manual/)

---

## Other/Special Purpose Languages

### Scala
**Installation:**
- Install via SDKMAN: `sdk install scala`
- macOS: `brew install scala`
- Requires Java

**Run:** `scala hello.scala`

**Documentation:** [docs.scala-lang.org](https://docs.scala-lang.org/)

---

### SQL
**Installation:**
- Install a database system (PostgreSQL, MySQL, SQLite)
- macOS: `brew install postgresql` or `brew install mysql`
- SQLite is often pre-installed

**Run:** `sqlite3 < hello.sql` or `psql -f hello.sql`

**Documentation:** [sqlite.org/docs](https://www.sqlite.org/docs.html)

---

### Prolog
**Installation:**
- Install SWI-Prolog: [swi-prolog.org](https://www.swi-prolog.org/Download.html)
- macOS: `brew install swi-prolog`
- Linux: `sudo apt install swi-prolog`

**Run:** `swipl -s hello.pl -g main -t halt`

**Documentation:** [swi-prolog.org/pldoc](https://www.swi-prolog.org/pldoc/)

---

### Assembly (x86)
**Installation:**
- Install NASM: `brew install nasm` (macOS)
- Linux: `sudo apt install nasm`
- Requires linker (ld)

**Run:** `nasm -f elf64 hello.asm && ld hello.o -o hello && ./hello`

**Documentation:** [nasm.us/doc](https://www.nasm.us/doc/)

---

### Fortran
**Installation:**
- Install gfortran: `brew install gcc` (macOS)
- Linux: `sudo apt install gfortran`

**Run:** `gfortran hello.f90 -o hello && ./hello`

**Documentation:** [fortran-lang.org](https://fortran-lang.org/)

---

### COBOL
**Installation:**
- Install GnuCOBOL: `brew install gnu-cobol` (macOS)
- Linux: `sudo apt install gnucobol`

**Run:** `cobc -x hello.cob && ./hello`

**Documentation:** [gnucobol.sourceforge.io](https://gnucobol.sourceforge.io/)

---

### Pascal
**Installation:**
- Install Free Pascal: [freepascal.org](https://www.freepascal.org/)
- macOS: `brew install fpc`
- Linux: `sudo apt install fp-compiler`

**Run:** `fpc hello.pas && ./hello`

**Documentation:** [freepascal.org/docs](https://www.freepascal.org/docs.html)

---

### MATLAB
**Installation:**
- Commercial software from [mathworks.com](https://www.mathworks.com/)
- Or use GNU Octave (free alternative): `brew install octave`

**Run:** `matlab -batch "run('hello.m')"` or `octave hello.m`

**Documentation:** [mathworks.com/help/matlab](https://www.mathworks.com/help/matlab/)

---

### Dart
**Installation:**
- Download from [dart.dev/get-dart](https://dart.dev/get-dart)
- macOS: `brew install dart`
- Linux: Follow Dart's installation guide

**Run:** `dart hello.dart`

**Documentation:** [dart.dev/guides](https://dart.dev/guides)

---

### Visual Basic
**Installation:**
- Install .NET SDK (includes VB compiler)
- Windows: Visual Studio

**Run:** `vbc hello.vb && hello.exe`

**Documentation:** [docs.microsoft.com/dotnet/visual-basic](https://docs.microsoft.com/en-us/dotnet/visual-basic/)

---

### Forth
**Installation:**
- Install Gforth: `brew install gforth` (macOS)
- Linux: `sudo apt install gforth`

**Run:** `gforth hello.fth -e bye`

**Documentation:** [forth-standard.org](https://forth-standard.org/)

---

### Standard ML (SML)
**Installation:**
- Install SML/NJ: [smlnj.org](https://www.smlnj.org/)
- macOS: `brew install smlnj`
- Linux: `sudo apt install smlnj`

**Run:** `sml hello.sml`

**Documentation:** [smlnj.org/doc](https://www.smlnj.org/doc/)

---

### Elm
**Installation:**
- Install via npm: `npm install -g elm`
- macOS: `brew install elm`

**Run:** `elm make hello.elm` (compiles to HTML)

**Documentation:** [guide.elm-lang.org](https://guide.elm-lang.org/)

---

### PureScript
**Installation:**
- Install via npm: `npm install -g purescript`
- Requires Node.js

**Run:** `purs compile hello.purs` (compiles to JavaScript)

**Documentation:** [purescript.org/learn](https://www.purescript.org/learn/)

---

## Quick Reference Table

| Language | Package Manager | Official Site |
|----------|----------------|---------------|
| C# | dotnet | [dotnet.microsoft.com](https://dotnet.microsoft.com/) |
| Swift | Xcode/swift.org | [swift.org](https://swift.org/) |
| Kotlin | SDKMAN/brew | [kotlinlang.org](https://kotlinlang.org/) |
| Perl | brew/apt | [perl.org](https://www.perl.org/) |
| Lua | brew/apt | [lua.org](https://www.lua.org/) |
| R | brew/apt | [r-project.org](https://www.r-project.org/) |
| Julia | brew/snap | [julialang.org](https://julialang.org/) |
| Scala | SDKMAN/brew | [scala-lang.org](https://www.scala-lang.org/) |
| Haskell | GHCup | [haskell.org](https://www.haskell.org/) |
| Erlang | brew/apt | [erlang.org](https://www.erlang.org/) |
| Elixir | brew/apt | [elixir-lang.org](https://elixir-lang.org/) |

## Notes

- Most languages can be installed via package managers (Homebrew on macOS, apt/dnf on Linux, Chocolatey on Windows)
- For version management, consider tools like SDKMAN (JVM languages), rbenv (Ruby), pyenv (Python), nvm (Node.js)
- Windows users may need WSL (Windows Subsystem for Linux) for some Unix-specific languages
- Always check official documentation for the most up-to-date installation instructions
