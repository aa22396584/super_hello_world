# AWK Hello World

AWK is a domain-specific language designed for text processing and typically used as a data extraction and reporting tool.

## Installation

### macOS/Linux
AWK (usually GNU AWK or gawk) comes pre-installed on most Unix-like systems.

```bash
awk --version
```

If not installed:

```bash
# macOS
brew install gawk

# Ubuntu/Debian
sudo apt install gawk

# Fedora
sudo dnf install gawk
```

## Running the Program

Make the script executable and run it:

```bash
chmod +x hello.awk
./hello.awk
```

Or run it directly with awk:

```bash
awk -f hello.awk
```

Or inline:

```bash
awk 'BEGIN { print "Hello, World!" }'
```

## Expected Output

```
Hello, World!
```

## Official Documentation

- [GNU AWK Manual](https://www.gnu.org/software/gawk/manual/)
- [AWK Tutorial](https://www.grymoire.com/Unix/Awk.html)
