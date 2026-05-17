---
description: 暂存所有变更，创建提交并推送到远程（请谨慎使用）
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*), Bash(git push:*), Bash(git diff:*), Bash(git log:*), Bash(git pull:*)
---

# 提交并推送全部内容

⚠️ **注意**：将所有变更都暂存、提交并推送到远程。只有在你确认所有改动都应该放在一起时才使用。

## 工作流

### 1. 分析变更
并行运行：
- `git status` - 显示已修改/已添加/已删除/未跟踪文件
- `git diff --stat` - 显示变更统计
- `git log -1 --oneline` - 查看最近一次提交，便于统一提交信息风格

### 2. 安全检查

**❌ 如果发现以下内容，立即停止并警告：**
- Secrets：`.env*`、`*.key`、`*.pem`、`credentials.json`、`secrets.yaml`、`id_rsa`、`*.p12`、`*.pfx`、`*.cer`
- API Keys：任何 `*_API_KEY`、`*_SECRET`、`*_TOKEN` 变量包含真实值，而不是占位符，如 `your-api-key`、`xxx`、`placeholder`
- 大文件：`>10MB` 且未使用 Git LFS
- 构建产物：`node_modules/`、`dist/`、`build/`、`__pycache__/`、`*.pyc`、`.venv/`
- 临时文件：`.DS_Store`、`thumbs.db`、`*.swp`、`*.tmp`

### 3. 请求确认

展示摘要：
```
📊 变更摘要：
- X 个文件已修改，Y 个文件已新增，Z 个文件已删除
- 总计：+AAA 行新增，-BBB 行删除

🔒 安全性：✅ 无 secrets | ✅ 无大文件 | ⚠️ [警告]
🌿 分支： [name] → origin/[name]

我将执行：git add . → commit → push

请输入 'yes' 继续，或输入 'no' 取消。
```

**在收到明确的 "yes" 之前不要继续。**

### 4. 执行（确认后）

按顺序运行：
```bash
git add .
git status  # 验证暂存状态
```

### 5. 生成提交信息

分析变更并创建 conventional commit：

**格式：**
```
[type]: 简要摘要（最多 72 个字符）

- 关键改动 1
- 关键改动 2
- 关键改动 3
```

**类型：** `feat`、`fix`、`docs`、`style`、`refactor`、`test`、`chore`、`perf`、`build`、`ci`

### 6. 提交并推送

```bash
git commit -m "[生成的提交信息]"
git push  # 如果失败：git pull --rebase && git push
git log -1 --oneline --decorate  # 验证
```

### 7. 确认成功

```
✅ 已成功推送到远程！

Commit: [hash] [message]
Branch: [branch] → origin/[branch]
Files changed: X (+insertions, -deletions)
```
