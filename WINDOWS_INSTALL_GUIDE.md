
# Windows 系统本地安装指南

## 📍 你的项目路径
```
D:\claude_project\project1\claude-howto
```

---

## 🚀 第一步：安装 Slash Commands（Skills 格式）

### 方法 1：使用安装脚本（最简单，推荐）

1. **打开文件资源管理器**，导航到：
   ```
   D:\claude_project\project1\claude-howto
   ```

2. **创建安装脚本**
   - 新建一个文本文件，命名为 `install.bat`
   - 粘贴以下内容：

```batch
@echo off
echo ====================================
echo Claude Code 安装向导
echo ====================================
echo.

set PROJECT_DIR=D:\claude_project\project1\claude-howto
echo 项目目录: %PROJECT_DIR%
echo.

echo [1/3] 创建目录结构...
if not exist "%PROJECT_DIR%\.claude" mkdir "%PROJECT_DIR%\.claude"
if not exist "%PROJECT_DIR%\.claude\skills" mkdir "%PROJECT_DIR%\.claude\skills"

echo [2/3] 安装 Skills...
if not exist "%PROJECT_DIR%\.claude\skills\optimize" mkdir "%PROJECT_DIR%\.claude\skills\optimize"
copy "%PROJECT_DIR%\zh\01-slash-commands\optimize.md" "%PROJECT_DIR%\.claude\skills\optimize\SKILL.md"

if not exist "%PROJECT_DIR%\.claude\skills\pr" mkdir "%PROJECT_DIR%\.claude\skills\pr"
copy "%PROJECT_DIR%\zh\01-slash-commands\pr.md" "%PROJECT_DIR%\.claude\skills\pr\SKILL.md"

if not exist "%PROJECT_DIR%\.claude\skills\commit" mkdir "%PROJECT_DIR%\.claude\skills\commit"
copy "%PROJECT_DIR%\zh\01-slash-commands\commit.md" "%PROJECT_DIR%\.claude\skills\commit\SKILL.md"

if not exist "%PROJECT_DIR%\.claude\skills\push-all" mkdir "%PROJECT_DIR%\.claude\skills\push-all"
copy "%PROJECT_DIR%\zh\01-slash-commands\push-all.md" "%PROJECT_DIR%\.claude\skills\push-all\SKILL.md"

echo [3/3] 安装项目 Memory...
copy "%PROJECT_DIR%\zh\02-memory\project-CLAUDE.md" "%PROJECT_DIR%\CLAUDE.md"

echo.
echo ====================================
echo 安装成功！
echo ====================================
echo.
echo 请重启 Claude Code，然后输入 / 查看命令
echo.
pause
```

3. **保存并运行**
   - 保存文件
   - 双击运行 `install.bat`
   - 看到"安装成功！"提示后关闭

---

### 方法 2：手动安装

如果脚本不行，手动操作：

#### 1️⃣ 创建 Skills 目录

在 `D:\claude_project\project1\claude-howto\.claude\` 下创建：
```
skills\
├── optimize\
├── pr\
├── commit\
└── push-all\
```

#### 2️⃣ 复制文件

| 从 | 复制到 |
|------|--------|
| `zh\01-slash-commands\optimize.md` | `.claude\skills\optimize\SKILL.md` |
| `zh\01-slash-commands\pr.md` | `.claude\skills\pr\SKILL.md` |
| `zh\01-slash-commands\commit.md` | `.claude\skills\commit\SKILL.md` |
| `zh\01-slash-commands\push-all.md` | `.claude\skills\push-all\SKILL.md` |

**注意**：文件名必须改为 `SKILL.md`！

#### 3️⃣ 安装项目 Memory

| 从 | 复制到 |
|------|--------|
| `zh\02-memory\project-CLAUDE.md` | `CLAUDE.md` |

---

## ✅ 验证安装

1. **打开 Claude Code**
   ```bash
   cd D:\claude_project\project1\claude-howto
   claude
   ```

2. **输入 `/` 查看命令**

你应该能看到：
- `/optimize`
- `/pr`
- `/commit`
- `/push-all`

3. **测试一下**
   输入 `/optimize` 试试！

---

## 📦 安装后你会得到

| 命令 | 功能 |
|------|------|
| `/optimize` | 代码优化分析 |
| `/pr` | Pull Request 准备 |
| `/commit` | 带上下文的 Git 提交 |
| `/push-all` | 暂存、提交并推送（含安全检查） |

---

## 🎯 下一步

学完 Slash Commands 后，继续学习：

| 模块 | 位置 | 说明 |
|------|------|------|
| Memory | `02-memory/` | 持久化上下文 |
| Checkpoints | `08-checkpoints/` | 会话快照和回滚 |
| CLI Basics | `10-cli/` | 命令行基础 |

---

## 💡 提示

- 安装后必须**重启 Claude Code**才能看到新命令
- 如果看不到，尝试完全退出再重新打开
- 这些命令只在当前项目中可用

---

## 🆘 常见问题

### Q: 为什么看不到命令？
A: 确保文件在 `.claude\skills\<name>\SKILL.md`，注意大小写！

### Q: 需要重启吗？
A: 是的，需要重启 Claude Code

### Q: 可以安装到全局吗？
A: 可以，复制到 `C:\Users\你的用户名\.claude\skills\`
