
@echo off
echo ====================================
echo Claude Code 命令安装工具
echo ====================================
echo.

set PROJECT_DIR=%~dp0..
echo 当前项目目录: %PROJECT_DIR%
echo.

REM 创建目录结构
echo [1/4] 创建目录结构...
if not exist "%PROJECT_DIR%\.claude\commands" mkdir "%PROJECT_DIR%\.claude\commands"
if not exist "%PROJECT_DIR%\.claude\skills\optimize" mkdir "%PROJECT_DIR%\.claude\skills\optimize"
if not exist "%PROJECT_DIR%\.claude\skills\pr" mkdir "%PROJECT_DIR%\.claude\skills\pr"
if not exist "%PROJECT_DIR%\.claude\skills\commit" mkdir "%PROJECT_DIR%\.claude\skills\commit"
if not exist "%PROJECT_DIR%\.claude\skills\push-all" mkdir "%PROJECT_DIR%\.claude\skills\push-all"

REM 复制 Commands 文件
echo [2/4] 安装 Commands...
copy "%~dp0commands\optimize.md" "%PROJECT_DIR%\.claude\commands\optimize.md" &gt;nul
copy "%~dp0commands\pr.md" "%PROJECT_DIR%\.claude\commands\pr.md" &gt;nul
copy "%~dp0commands\commit.md" "%PROJECT_DIR%\.claude\commands\commit.md" &gt;nul
copy "%~dp0commands\push-all.md" "%PROJECT_DIR%\.claude\commands\push-all.md" &gt;nul

REM 复制 Skills 文件
echo [3/4] 安装 Skills...
copy "%~dp0skills\optimize\SKILL.md" "%PROJECT_DIR%\.claude\skills\optimize\SKILL.md" &gt;nul
copy "%~dp0skills\pr\SKILL.md" "%PROJECT_DIR%\.claude\skills\pr\SKILL.md" &gt;nul
copy "%~dp0skills\commit\SKILL.md" "%PROJECT_DIR%\.claude\skills\commit\SKILL.md" &gt;nul
copy "%~dp0skills\push-all\SKILL.md" "%PROJECT_DIR%\.claude\skills\push-all\SKILL.md" &gt;nul

echo [4/4] 完成！
echo.
echo ====================================
echo 安装成功！
echo ====================================
echo.
echo 请重启 Claude Code 会话
echo 然后输入 '/' 查看可用命令：
echo   /optimize  - 代码优化分析
echo   /pr        - Pull Request 准备
echo   /commit    - Git 提交
echo   /push-all  - 提交并推送
echo.
pause
