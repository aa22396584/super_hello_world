# 多语言 Hello World 集合

[English](README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Bahasa Indonesia](README.id.md) | [ไทย](README.th.md)

一个涵盖 60 多种编程语言的「Hello, World!」实现集合，按范式和类别组织，方便比较语法与运行方式。

## 🌟 概览

- 收录编译型、解释型、函数式、脚本及特殊用途语言的示例
- 每个语言目录都有带注释的源码与独立的 README
- 自动化测试确保输出一致为 `Hello, World!`
- 完整语言列表与运行命令请参考英文版 README

## 🚀 快速开始

使用统一脚本执行任意语言：

```bash
# 执行特定语言
./run.sh python

# 使用完整语言名称
./run.sh "C++"

# 列出全部语言或按类别列出
./run.sh --list
./run.sh --category compiled

# 运行全部语言（需已安装对应环境）
./run.sh --all
```

## 🧪 运行测试

```bash
# 测试全部语言
./test.sh

# 测试特定语言或按类别
./test.sh rust
./test.sh --category functional

# 仅测试已安装环境的语言
./test.sh --available-only

# 查看详细输出
./test.sh --verbose
```

## 🗂 项目结构

```
multi-language-hello-world/
├── README.md          # 英文说明
├── README.zh-CN.md    # 简体中文说明
├── README.zh-TW.md    # 繁体中文说明
├── languages.json     # 语言元数据
├── run.sh             # 统一执行脚本
├── test.sh            # 自动化测试脚本
├── languages/         # 所有语言的实现
└── docs/              # 安装指南与比较
```

## 🤝 贡献

添加新语言的步骤：
1) 在对应类别下建立目录并添加 `hello.{ext}`  
2) 在目录中创建 README，说明安装与运行方式  
3) 更新 `languages.json` 的元数据  
4) 运行 `./test.sh your-language` 验证输出  

详细规范见 `CONTRIBUTING.md`。

## 🎯 项目目标

- 提供学习不同语言语法的快速参考
- 展示同一任务在多语言的实现差异
- 保持示例可运行且通过测试

## 📝 许可

本项目开源，可自由学习与使用。

## 🔗 资源

- 安装指南：`docs/installation-guides/`
- 语言比较：`docs/language-comparison.md`
- 贡献指南：`CONTRIBUTING.md`

