# Multi-Language Hello World Collection

> **Development home:** https://github.com/ImL1s/super_hello_world  
> Please open issues and pull requests there.  
> **Mirrors:** [Codeberg](https://codeberg.org/ImL1s/super_hello_world) · [GitLab](https://gitlab.com/aa22396584/super_hello_world)


<div align="center">
  <img src="assets/readme_hero.png" alt="Super Hello World Hero" width="100%" />
</div>

<p align="center">
  <br />
  <a href="README.md">English</a> | <a href="README.zh-TW.md">繁體中文</a> | <a href="README.zh-CN.md">简体中文</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <a href="README.id.md">Bahasa Indonesia</a> | <a href="README.th.md">ไทย</a>
</p>

<p align="center">
  <strong>A comprehensive collection of "Hello, World!" implementations across 60+ programming languages.</strong>
  <br />
  Organized by paradigm and category · Learning resource · Syntax comparison
</p>

## 🌟 Overview

This repository contains working Hello World programs in over 60 programming languages, including:
- **Compiled Languages**: C, C++, Rust, Go, Swift, Kotlin, and more
- **Interpreted Languages**: Python, JavaScript, Ruby, PHP, Perl, and more
- **Functional Languages**: Haskell, OCaml, Erlang, Elixir, Clojure, and more
- **Scripting Languages**: Bash, TypeScript, PowerShell, AWK, and more
- **Special Purpose Languages**: Java, Scala, SQL, Assembly, COBOL, and more

Each implementation includes:
- ✅ Source code with explanatory comments
- ✅ Individual README with installation and execution instructions
- ✅ Automated testing to verify correct output

## 🚀 Quick Start

### Running a Specific Language

Use the unified runner script to execute any language:

```bash
# Run a specific language
./run.sh python

# Run with full language name
./run.sh "C++"

# List all available languages
./run.sh --list

# List languages by category
./run.sh --category compiled

# Run all languages (requires all runtimes installed)
./run.sh --all
```

### Running Tests

Verify all implementations with the automated test suite:

```bash
# Test all languages
./test.sh

# Test a specific language
./test.sh rust

# Test by category
./test.sh --category functional

# Test only languages with installed runtimes
./test.sh --available-only

# Verbose output
./test.sh --verbose
```

### Manual Execution

You can also run languages manually. For example:

**Interpreted Language (Python):**
```bash
cd languages/interpreted/python
python3 hello.py
```

**Compiled Language (C):**
```bash
cd languages/compiled/c
gcc hello.c -o hello
./hello
```

## 📚 Supported Languages


| Language | Category | File | Run Command | Official Docs |
|----------|----------|------|-------------|---------------|
| Ada | compiled | [languages/compiled/ada/hello.adb](languages/compiled/ada/hello.adb) | `gnatmake hello.adb && ./hello` | [Link](https://www.adaic.org/) |
| APL | interpreted | [languages/interpreted/apl/hello.apl](languages/interpreted/apl/hello.apl) | `dyalog hello.apl` | [Link](https://www.dyalog.com/) |
| Assembly | other | [languages/other/assembly/hello.asm](languages/other/assembly/hello.asm) | `nasm -f elf64 hello.asm -o hello.o && ld hello.o -o hello && ./hello` | [Link](https://www.nasm.us/docs.php) |
| AWK | scripting | [languages/scripting/awk/hello.awk](languages/scripting/awk/hello.awk) | `awk -f hello.awk` | [Link](https://www.gnu.org/software/gawk/manual/) |
| Bash | scripting | [languages/scripting/bash/hello.sh](languages/scripting/bash/hello.sh) | `bash hello.sh` | [Link](https://www.gnu.org/software/bash/manual/) |
| C | compiled | [languages/compiled/c/hello.c](languages/compiled/c/hello.c) | `gcc hello.c -o hello && ./hello` | [Link](https://en.cppreference.com/w/c) |
| C# | compiled | [languages/compiled/csharp/hello.cs](languages/compiled/csharp/hello.cs) | `csc hello.cs && ./hello.exe` | [Link](https://docs.microsoft.com/en-us/dotnet/csharp/) |
| C++ | compiled | [languages/compiled/cpp/hello.cpp](languages/compiled/cpp/hello.cpp) | `g++ hello.cpp -o hello && ./hello` | [Link](https://en.cppreference.com/w/cpp) |
| Clojure | functional | [languages/functional/clojure/hello.clj](languages/functional/clojure/hello.clj) | `clojure hello.clj` | [Link](https://clojure.org/reference/documentation) |
| COBOL | other | [languages/other/cobol/hello.cob](languages/other/cobol/hello.cob) | `cobc -x hello.cob -o hello && ./hello` | [Link](https://gnucobol.sourceforge.io/) |
| Common Lisp | functional | [languages/functional/commonlisp/hello.lisp](languages/functional/commonlisp/hello.lisp) | `sbcl --script hello.lisp` | [Link](https://common-lisp.net/) |
| Crystal | compiled | [languages/compiled/crystal/hello.cr](languages/compiled/crystal/hello.cr) | `crystal build hello.cr && ./hello` | [Link](https://crystal-lang.org/docs/) |
| D | compiled | [languages/compiled/d/hello.d](languages/compiled/d/hello.d) | `dmd hello.d && ./hello` | [Link](https://dlang.org/) |
| Dart | other | [languages/other/dart/hello.dart](languages/other/dart/hello.dart) | `dart hello.dart` | [Link](https://dart.dev/guides) |
| Elixir | functional | [languages/functional/elixir/hello.ex](languages/functional/elixir/hello.ex) | `elixir hello.ex` | [Link](https://hexdocs.pm/elixir/) |
| Elm | other | [languages/other/elm/hello.elm](languages/other/elm/hello.elm) | `elm make hello.elm` | [Link](https://guide.elm-lang.org/) |
| Erlang | functional | [languages/functional/erlang/hello.erl](languages/functional/erlang/hello.erl) | `erlc hello.erl && erl -noshell -s hello main -s init stop` | [Link](https://www.erlang.org/docs) |
| F# | functional | [languages/functional/fsharp/hello.fs](languages/functional/fsharp/hello.fs) | `dotnet fsi hello.fs` | [Link](https://docs.microsoft.com/en-us/dotnet/fsharp/) |
| Fish | scripting | [languages/scripting/fish/hello.fish](languages/scripting/fish/hello.fish) | `fish hello.fish` | [Link](https://fishshell.com/) |
| Forth | other | [languages/other/forth/hello.fth](languages/other/forth/hello.fth) | `gforth hello.fth` | [Link](https://www.complang.tuwien.ac.at/forth/gforth/Docs-html/) |
| Fortran | other | [languages/other/fortran/hello.f90](languages/other/fortran/hello.f90) | `gfortran hello.f90 -o hello && ./hello` | [Link](https://fortran-lang.org/learn/) |
| Go | compiled | [languages/compiled/go/hello.go](languages/compiled/go/hello.go) | `go build hello.go && ./hello` | [Link](https://go.dev/doc/) |
| Groovy | interpreted | [languages/interpreted/groovy/hello.groovy](languages/interpreted/groovy/hello.groovy) | `groovy hello.groovy` | [Link](https://groovy-lang.org/documentation.html) |
| Haskell | functional | [languages/functional/haskell/hello.hs](languages/functional/haskell/hello.hs) | `runhaskell hello.hs` | [Link](https://www.haskell.org/documentation/) |
| J | interpreted | [languages/interpreted/j/hello.ijs](languages/interpreted/j/hello.ijs) | `jconsole hello.ijs` | [Link](https://www.jsoftware.com/) |
| Java | other | [languages/other/java/Hello.java](languages/other/java/Hello.java) | `javac Hello.java && java Hello` | [Link](https://docs.oracle.com/en/java/) |
| JavaScript | interpreted | [languages/interpreted/javascript/hello.js](languages/interpreted/javascript/hello.js) | `node hello.js` | [Link](https://developer.mozilla.org/en-US/docs/Web/JavaScript) |
| Julia | interpreted | [languages/interpreted/julia/hello.jl](languages/interpreted/julia/hello.jl) | `julia hello.jl` | [Link](https://docs.julialang.org/) |
| Kotlin | compiled | [languages/compiled/kotlin/hello.kt](languages/compiled/kotlin/hello.kt) | `kotlinc hello.kt -include-runtime -d hello.jar && java -jar hello.jar` | [Link](https://kotlinlang.org/docs/) |
| Lua | interpreted | [languages/interpreted/lua/hello.lua](languages/interpreted/lua/hello.lua) | `lua hello.lua` | [Link](https://www.lua.org/manual/) |
| MATLAB | other | [languages/other/matlab/hello.m](languages/other/matlab/hello.m) | `octave hello.m` | [Link](https://www.mathworks.com/help/matlab/) |
| Nim | compiled | [languages/compiled/nim/hello.nim](languages/compiled/nim/hello.nim) | `nim c hello.nim && ./hello` | [Link](https://nim-lang.org/documentation.html) |
| Objective-C | compiled | [languages/compiled/objc/hello.m](languages/compiled/objc/hello.m) | `clang -framework Foundation hello.m -o hello && ./hello` | [Link](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/) |
| OCaml | functional | [languages/functional/ocaml/hello.ml](languages/functional/ocaml/hello.ml) | `ocaml hello.ml` | [Link](https://ocaml.org/docs) |
| Odin | compiled | [languages/compiled/odin/hello.odin](languages/compiled/odin/hello.odin) | `odin build hello.odin -file && ./hello` | [Link](https://odin-lang.org/docs/) |
| Pascal | other | [languages/other/pascal/hello.pas](languages/other/pascal/hello.pas) | `fpc hello.pas && ./hello` | [Link](https://www.freepascal.org/docs.html) |
| Perl | interpreted | [languages/interpreted/perl/hello.pl](languages/interpreted/perl/hello.pl) | `perl hello.pl` | [Link](https://perldoc.perl.org/) |
| PHP | interpreted | [languages/interpreted/php/hello.php](languages/interpreted/php/hello.php) | `php hello.php` | [Link](https://www.php.net/docs.php) |
| PowerShell | scripting | [languages/scripting/powershell/hello.ps1](languages/scripting/powershell/hello.ps1) | `pwsh hello.ps1` | [Link](https://docs.microsoft.com/en-us/powershell/) |
| Prolog | other | [languages/other/prolog/hello.pl](languages/other/prolog/hello.pl) | `swipl -s hello.pl` | [Link](https://www.swi-prolog.org/pldoc/index.html) |
| PureScript | other | [languages/other/purescript/hello.purs](languages/other/purescript/hello.purs) | `spago run` | [Link](https://book.purescript.org/) |
| Python | interpreted | [languages/interpreted/python/hello.py](languages/interpreted/python/hello.py) | `python3 hello.py` | [Link](https://docs.python.org/3/) |
| R | interpreted | [languages/interpreted/r/hello.r](languages/interpreted/r/hello.r) | `Rscript hello.r` | [Link](https://cran.r-project.org/manuals.html) |
| Racket | functional | [languages/functional/racket/hello.rkt](languages/functional/racket/hello.rkt) | `racket hello.rkt` | [Link](https://docs.racket-lang.org/) |
| Ruby | interpreted | [languages/interpreted/ruby/hello.rb](languages/interpreted/ruby/hello.rb) | `ruby hello.rb` | [Link](https://www.ruby-lang.org/en/documentation/) |
| Rust | compiled | [languages/compiled/rust/hello.rs](languages/compiled/rust/hello.rs) | `rustc hello.rs -o hello && ./hello` | [Link](https://doc.rust-lang.org/) |
| Scala | other | [languages/other/scala/hello.scala](languages/other/scala/hello.scala) | `scalac hello.scala && scala Hello` | [Link](https://docs.scala-lang.org/) |
| Scheme | functional | [languages/functional/scheme/hello.scm](languages/functional/scheme/hello.scm) | `guile hello.scm` | [Link](https://www.scheme.org/) |
| Sed | scripting | [languages/scripting/sed/hello.sed](languages/scripting/sed/hello.sed) | `sed -f hello.sed < /dev/null` | [Link](https://www.gnu.org/software/sed/manual/) |
| Smalltalk | interpreted | [languages/interpreted/smalltalk/hello.st](languages/interpreted/smalltalk/hello.st) | `gst hello.st` | [Link](https://www.gnu.org/software/smalltalk/) |
| SQL | other | [languages/other/sql/hello.sql](languages/other/sql/hello.sql) | `sqlite3 < hello.sql` | [Link](https://www.sqlite.org/docs.html) |
| Standard ML | other | [languages/other/sml/hello.sml](languages/other/sml/hello.sml) | `sml hello.sml` | [Link](https://www.smlnj.org/doc/) |
| Swift | compiled | [languages/compiled/swift/hello.swift](languages/compiled/swift/hello.swift) | `swiftc hello.swift -o hello && ./hello` | [Link](https://swift.org/documentation/) |
| Tcl | interpreted | [languages/interpreted/tcl/hello.tcl](languages/interpreted/tcl/hello.tcl) | `tclsh hello.tcl` | [Link](https://www.tcl.tk/man/) |
| TypeScript | scripting | [languages/scripting/typescript/hello.ts](languages/scripting/typescript/hello.ts) | `ts-node hello.ts` | [Link](https://www.typescriptlang.org/docs/) |
| V | compiled | [languages/compiled/v/hello.v](languages/compiled/v/hello.v) | `v hello.v && ./hello` | [Link](https://github.com/vlang/v/blob/master/doc/docs.md) |
| Visual Basic | other | [languages/other/vb/hello.vb](languages/other/vb/hello.vb) | `vbc hello.vb && mono hello.exe` | [Link](https://docs.microsoft.com/en-us/dotnet/visual-basic/) |
| Zig | compiled | [languages/compiled/zig/hello.zig](languages/compiled/zig/hello.zig) | `zig build-exe hello.zig && ./hello` | [Link](https://ziglang.org/documentation/) |
| Zsh | scripting | [languages/scripting/zsh/hello.zsh](languages/scripting/zsh/hello.zsh) | `zsh hello.zsh` | [Link](https://www.zsh.org/) |

**Total: 60 Languages**


## 📖 Usage Guide

### Understanding the Project Structure

```
multi-language-hello-world/
├── README.md                    # This file
├── languages.json               # Language metadata and configuration
├── run.sh                       # Unified execution script
├── test.sh                      # Automated testing script
├── CONTRIBUTING.md              # Guide for adding new languages
├── languages/                   # All language implementations
│   ├── compiled/               # Compiled languages (C, C++, Rust, Go, etc.)
│   ├── interpreted/            # Interpreted languages (Python, Ruby, PHP, etc.)
│   ├── functional/             # Functional languages (Haskell, OCaml, Erlang, etc.)
│   ├── scripting/              # Scripting languages (Bash, PowerShell, AWK, etc.)
│   └── other/                  # Special purpose languages (Java, SQL, Assembly, etc.)
└── docs/                       # Additional documentation
    ├── installation-guides/    # Installation guides for each language
    └── language-comparison.md  # Language comparison reference
```

Each language directory contains:
- **hello.{ext}**: The Hello World implementation with explanatory comments
- **README.md**: Language-specific installation and execution instructions

### Running the Test Suite

The automated test suite validates that all implementations produce the correct output:

```bash
# Run all tests
./test.sh

# Test a specific language
./test.sh python

# Test by category
./test.sh --category functional

# Test only languages with installed runtimes
./test.sh --available-only

# Show detailed output
./test.sh --verbose
```

**Test Output Example:**
```
Testing 60 languages...
✓ Python: Hello, World!
✓ JavaScript: Hello, World!
✓ Rust: Hello, World!
✗ Haskell: Runtime not installed
...
Summary: 58/60 passed (2 skipped - runtime not installed)
```

### Installation Requirements

To run all languages, you'll need their respective runtimes/compilers installed. Check the installation guides in `docs/installation-guides/` for detailed instructions.

**Common Requirements:**
- **Compiled Languages**: gcc, g++, rustc, go, etc.
- **Interpreted Languages**: python3, node, ruby, php, etc.
- **Functional Languages**: ghc, ocaml, erlang, elixir, etc.
- **Scripting Languages**: bash, zsh, pwsh, etc.

If a runtime is not installed, the scripts will display helpful error messages with links to installation guides.

## 🤝 Contributing

We welcome contributions! Here's how to add a new language:

### Adding a New Language

1. **Create the directory structure:**
   ```bash
   mkdir -p languages/{category}/{language-name}
   cd languages/{category}/{language-name}
   ```

2. **Create the Hello World implementation:**
   - File name: `hello.{extension}`
   - Must output exactly: `Hello, World!`
   - Include explanatory comments about the syntax

3. **Create a README.md:**
   ```markdown
   # {Language Name} Hello World
   
   ## Description
   Brief description of the language
   
   ## Installation
   How to install the language runtime/compiler
   
   ## Running
   How to execute the program
   ```

4. **Update languages.json:**
   Add an entry with the language metadata:
   ```json
   {
     "name": "YourLanguage",
     "category": "compiled|interpreted|functional|scripting|other",
     "file": "languages/{category}/{language}/hello.{ext}",
     "extension": ".{ext}",
     "runCommand": "command {file}",
     "compileCommand": "compile-command {file}" or null,
     "version": "version-info",
     "officialDocs": "https://...",
     "installGuide": "docs/installation-guides/{language}.md"
   }
   ```

5. **Test your implementation:**
   ```bash
   ./test.sh your-language
   ```

6. **Submit a pull request** with your changes

### Code Style Guidelines

- Use idiomatic code for each language
- Include clear, explanatory comments
- Follow the language's standard formatting conventions
- Ensure output is exactly `Hello, World!` (with comma and exclamation mark)

### Checklist for New Languages

- [ ] Implementation file created with proper extension
- [ ] Code includes explanatory comments
- [ ] Output is exactly "Hello, World!"
- [ ] README.md is complete with installation and execution instructions
- [ ] languages.json is updated with correct metadata
- [ ] Tests pass: `./test.sh your-language`
- [ ] Installation guide created (optional but recommended)

For more details, see [CONTRIBUTING.md](CONTRIBUTING.md).

## 📊 Language Categories

- **Compiled (15)**: Languages that require compilation before execution
- **Interpreted (12)**: Languages executed directly by an interpreter
- **Functional (9)**: Languages emphasizing functional programming paradigms
- **Scripting (7)**: Languages primarily used for scripting and automation
- **Other (17)**: Special purpose languages and those that don't fit other categories

## 🎯 Project Goals

1. **Educational Resource**: Provide a comprehensive reference for learning programming language syntax
2. **Language Comparison**: Enable side-by-side comparison of how different languages approach the same task
3. **Quick Reference**: Serve as a quick-start guide for developers exploring new languages
4. **Automated Testing**: Ensure all implementations are correct and up-to-date

---

## Support

If this project saved you some time, you can [buy me a coffee](https://buymeacoffee.com/iml1s).

## 📝 License

This project is open source and available for educational purposes.

## 🔗 Additional Resources

- [Installation Guides](docs/installation-guides/) - Detailed installation instructions for each language
- [Language Comparison](docs/language-comparison.md) - Comparative analysis of language features
- [Contributing Guide](CONTRIBUTING.md) - How to add new languages to the collection

## 🙏 Acknowledgments

This project showcases the diversity and richness of programming languages. Each language has its own philosophy, strengths, and use cases. We encourage you to explore and learn from this collection!

---

**Happy Coding! 🚀**
