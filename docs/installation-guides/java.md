# Java Installation Guide

Java is a popular, object-oriented programming language that runs on the Java Virtual Machine (JVM).

## macOS

### Using Homebrew (Recommended)
```bash
# Install OpenJDK
brew install openjdk

# For the system Java wrappers to find this JDK
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
```

### Using Official Oracle JDK
1. Download JDK from [Oracle](https://www.oracle.com/java/technologies/downloads/)
2. Run the downloaded `.dmg` file
3. Follow the installation wizard

### Using SDKMAN! (Recommended for managing multiple versions)
```bash
# Install SDKMAN!
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java
sdk install java
```

### Verify Installation
```bash
java --version
javac --version
```

## Linux

### Ubuntu/Debian
```bash
# OpenJDK (Recommended)
sudo apt update
sudo apt install default-jdk

# Or specific version
sudo apt install openjdk-17-jdk
```

### Fedora/RHEL/CentOS
```bash
sudo dnf install java-latest-openjdk java-latest-openjdk-devel
```

### Arch Linux
```bash
sudo pacman -S jdk-openjdk
```

### Using SDKMAN! (Recommended)
```bash
# Install SDKMAN!
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java
sdk install java
```

### Verify Installation
```bash
java --version
javac --version
```

## Windows

### Using Official Oracle JDK
1. Download JDK from [Oracle](https://www.oracle.com/java/technologies/downloads/)
2. Run the downloaded `.exe` file
3. Follow the installation wizard
4. Set JAVA_HOME environment variable:
   - Right-click "This PC" → Properties → Advanced system settings
   - Environment Variables → New (System variables)
   - Variable name: `JAVA_HOME`
   - Variable value: `C:\Program Files\Java\jdk-XX` (your JDK path)
   - Add `%JAVA_HOME%\bin` to PATH

### Using Windows Package Manager (winget)
```powershell
winget install Oracle.JDK.17
```

### Using Chocolatey
```powershell
choco install openjdk
```

### Verify Installation
```powershell
java --version
javac --version
```

## Running Hello World

```bash
# Navigate to the Java directory
cd languages/other/java

# Compile the program
javac Hello.java

# Run the program
java Hello
```

## Official Documentation

- [Oracle Java Documentation](https://docs.oracle.com/en/java/)
- [OpenJDK](https://openjdk.org/)
- [Java Tutorials](https://docs.oracle.com/javase/tutorial/)
