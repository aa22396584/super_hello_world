# TypeScript Installation Guide

TypeScript is a typed superset of JavaScript that compiles to plain JavaScript.

## Prerequisites

TypeScript requires Node.js. See the [JavaScript/Node.js installation guide](javascript.md) first.

## Installation (All Platforms)

### Using npm (Recommended)
```bash
# Install TypeScript globally
npm install -g typescript

# Or install locally in a project
npm install --save-dev typescript
```

### Using yarn
```bash
yarn global add typescript
```

### Verify Installation
```bash
tsc --version
```

## Running Hello World

```bash
cd languages/scripting/typescript

# Compile TypeScript to JavaScript
tsc hello.ts

# Run the compiled JavaScript
node hello.js

# Or use ts-node to run directly
npx ts-node hello.ts
```

## Official Documentation
- [TypeScript Official Website](https://www.typescriptlang.org/)
- [TypeScript Documentation](https://www.typescriptlang.org/docs/)
