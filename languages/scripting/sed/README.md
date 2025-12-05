# Sed Hello World

Sed (Stream EDitor) is a Unix utility that parses and transforms text using a simple, compact programming language.

## Installation

### macOS/Linux
Sed comes pre-installed on most Unix-like systems.

```bash
sed --version
```

If not installed:

```bash
# macOS
brew install gnu-sed

# Ubuntu/Debian
sudo apt install sed

# Fedora
sudo dnf install sed
```

## Running the Program

Run with an empty input:

```bash
echo "" | sed -f hello.sed
```

Or using the script directly:

```bash
sed -f hello.sed < /dev/null
```

Or inline version:

```bash
sed 'i\Hello, World!' < /dev/null
```

## Expected Output

```
Hello, World!
```

## Official Documentation

- [GNU Sed Manual](https://www.gnu.org/software/sed/manual/)
- [Sed Tutorial](https://www.grymoire.com/Unix/Sed.html)
