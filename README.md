# SQL Agent Project Setup Guide

## 🚀 Automated Setup (Recommended)

### Prerequisites:
1. **Git**: Download from https://git-scm.com/download/windows
2. **GitHub CLI**: Download from https://cli.github.com/

### Quick Setup:
1. **Authenticate with GitHub CLI**:
   ```bash
   gh auth login
   ```
   
2. **Run the setup script**:
   - On Windows: Double-click `setup-github.bat`
   - On Linux/Mac: Run `bash setup-github.sh`

---

## 🛠️ Manual Setup (Alternative)

If you prefer to do it manually or don't have GitHub CLI:

### Step 1: Initialize Git
```bash
cd "c:\Users\malakkaran.pappachan\OneDrive - Abu Dhabi Ports\Desktop\test"
git init
git add .
git commit -m "Initial commit: SQL Agent with Ollama, HuggingFace, and OpenAI support"
```

### Step 2: Create GitHub Repository
1. Go to https://github.com/linoymalakkaran
2. Click "New repository"
3. Repository name: `sql-agent-ollama`
4. Description: `SQL Agent with Ollama, HuggingFace, and OpenAI support for natural language database queries`
5. Make it Public
6. Don't initialize with README (we already have files)
7. Click "Create repository"

### Step 3: Connect and Push
```bash
git remote add origin https://github.com/linoymalakkaran/sql-agent-ollama.git
git branch -M main
git push -u origin main
```

---

## 📁 What Will Be Included

Your repository will contain:
- ✅ `agent.ipynb` - Clean SQL agent notebook
- ✅ `Chinook.db` - Sample database
- ✅ `.gitignore` - Security protection
- ✅ Setup scripts
- ❌ `.env` - Protected (contains API keys)

---

## 🔐 Security Notes

- Your `.env` file with API keys is protected by `.gitignore`
- Database files are included for demonstration
- All sensitive information is excluded

---

## 🔄 Future Updates

After the initial setup, use these commands for updates:
```bash
git add .
git commit -m "Your update message"
git push
```

---

## 🆘 Troubleshooting

### GitHub CLI Authentication:
```bash
gh auth login
```

### Check Git Status:
```bash
git status
git log --oneline
```

### Repository URL:
https://github.com/linoymalakkaran/sql-agent-ollama
