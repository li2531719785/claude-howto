
# Claude Code 命令安装指南

## 方式 1：项目级别安装（推荐）

### Windows 系统：

1. 打开你的项目文件夹：`D:\claude_project\project1\claude-howto`

2. 创建目录结构：
   ```
   .claude/
   ├── commands/
   └── skills/
       ├── commit/
       ├── optimize/
       ├── pr/
       └── push-all/
   ```

3. 复制以下文件到对应位置：

   **Commands 目录（.claude/commands/）：**
   - optimize.md
   - pr.md
   - commit.md
   - push-all.md

   **Skills 目录（.claude/skills/[name]/）：**
   - optimize/SKILL.md
   - pr/SKILL.md
   - commit/SKILL.md
   - push-all/SKILL.md

4. 重启 Claude Code 会话

---

## 方式 2：个人级别安装（全局）

### Windows 系统：

1. 找到你的用户目录：
   - 通常是：`C:\Users\你的用户名\.claude\`

2. 创建目录结构：
   ```
   C:\Users\你的用户名\.claude\
   ├── commands/
   └── skills/
   ```

3. 复制相同的文件到这里

---

## 验证安装

在 Claude Code 中输入 `/`，你应该能看到：
- `/optimize`
- `/pr`
- `/commit`
- `/push-all`

---

## 命令说明

| 命令 | 功能 |
|------|------|
| `/optimize` | 代码优化分析 |
| `/pr` | Pull Request 准备 |
| `/commit` | 带上下文的 Git 提交 |
| `/push-all` | 暂存、提交并推送（含安全检查） |
