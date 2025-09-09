@echo off
REM SQL Agent Project - Git Setup and GitHub Push Script (Windows)
REM Run this batch file to initialize git, create GitHub repo, and push code

echo 🚀 Setting up Git and GitHub for SQL Agent Project
echo ==================================================

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git first.
    echo 💡 Download from: https://git-scm.com/download/windows
    pause
    exit /b 1
)

REM Check if gh CLI is installed
gh --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ GitHub CLI (gh) is not installed.
    echo 💡 Install it from: https://cli.github.com/
    echo 💡 Or use the manual method below.
    pause
    exit /b 1
)

REM Initialize git repository
echo 📁 Initializing Git repository...
git init

REM Add all files except those in .gitignore
echo 📝 Adding files to git...
git add .

REM Create initial commit
echo 💾 Creating initial commit...
git commit -m "Initial commit: SQL Agent with Ollama, HuggingFace, and OpenAI support" -m "Features:" -m "- Unified LLM creation (Ollama → HuggingFace → OpenAI fallback)" -m "- Complete SQL agent for natural language database queries" -m "- Chinook database integration" -m "- Clean, streamlined notebook structure" -m "- Helper functions for easy database access" -m "- Comprehensive .gitignore for security"

REM Create GitHub repository using GitHub CLI
echo 🐙 Creating GitHub repository...
set REPO_NAME=sql-agent-ollama
gh repo create %REPO_NAME% --public --description "SQL Agent with Ollama, HuggingFace, and OpenAI support for natural language database queries" --clone=false

REM Add remote origin
echo 🔗 Adding remote origin...
git remote add origin https://github.com/linoymalakkaran/%REPO_NAME%.git

REM Set main as default branch
git branch -M main

REM Push to GitHub
echo 🚀 Pushing to GitHub...
git push -u origin main

echo.
echo 🎉 SUCCESS! Your project is now on GitHub!
echo 📍 Repository URL: https://github.com/linoymalakkaran/%REPO_NAME%
echo.
echo 🔧 What was done:
echo ✅ Git repository initialized
echo ✅ Files added and committed
echo ✅ GitHub repository created
echo ✅ Code pushed to main branch
echo.
echo 💡 Next steps:
echo • Clone the repo on other machines: git clone https://github.com/linoymalakkaran/%REPO_NAME%.git
echo • Make changes and push: git add . ^&^& git commit -m "your message" ^&^& git push

pause
