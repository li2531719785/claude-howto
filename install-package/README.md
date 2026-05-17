
# Claude Code 命令安装包

## 快速开始（Windows）

### 方式 1：使用安装脚本（推荐）

1. 双击运行 `INSTALL_WINDOWS.bat`
2. 重启 Claude Code
3. 输入 `/` 查看命令

### 方式 2：手动安装

#### 项目级别安装：

1. 在你的项目根目录创建 `.claude` 文件夹
2. 复制以下文件：

```
你的项目/
└── .claude/
    ├── commands/
    │   ├── optimize.md
    │   ├── pr.md
    │   ├── commit.md
    │   └── push-all.md
    └── skills/
        ├── optimize/
        │   └── SKILL.md
        ├── pr/
        │   └── SKILL.md
        ├── commit/
        │   └── SKILL.md
        └── push-all/
            └── SKILL.md
```

#### 个人级别安装（全局）：

在你的用户目录下创建：

```
C:\Users\你的用户名\.claude\
├── commands/
└── skills/
```

复制相同的文件到这里。

## 可用命令

| 命令 | 功能 |
|------|------|
| `/optimize` | 代码优化分析 |
| `/pr` | Pull Request 准备 |
| `/commit` | 带上下文的 Git 提交 |
| `/push-all` | 暂存、提交并推送（含安全检查） |

## 验证安装

在 Claude Code 中输入 `/`，你应该能看到这些命令。

如果没有看到，请重启 Claude Code 会话。
