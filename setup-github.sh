#!/bin/bash

# SQL Agent Project - Git Setup and GitHub Push Script
# Run this script to initialize git, create GitHub repo, and push code

echo "🚀 Setting up Git and GitHub for SQL Agent Project"
echo "=================================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "💡 Install it from: https://cli.github.com/"
    echo "💡 Or use the manual method below."
    exit 1
fi

# Initialize git repository
echo "📁 Initializing Git repository..."
git init

# Add all files except those in .gitignore
echo "📝 Adding files to git..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: SQL Agent with Ollama, HuggingFace, and OpenAI support

Features:
- Unified LLM creation (Ollama → HuggingFace → OpenAI fallback)
- Complete SQL agent for natural language database queries
- Chinook database integration
- Clean, streamlined notebook structure
- Helper functions for easy database access
- Comprehensive .gitignore for security"

# Create GitHub repository using GitHub CLI
echo "🐙 Creating GitHub repository..."
REPO_NAME="sql-agent-ollama"
gh repo create $REPO_NAME --public --description "SQL Agent with Ollama, HuggingFace, and OpenAI support for natural language database queries" --clone=false

# Add remote origin
echo "🔗 Adding remote origin..."
git remote add origin https://github.com/linoymalakkaran/$REPO_NAME.git

# Set main as default branch
git branch -M main

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "🎉 SUCCESS! Your project is now on GitHub!"
echo "📍 Repository URL: https://github.com/linoymalakkaran/$REPO_NAME"
echo ""
echo "🔧 What was done:"
echo "✅ Git repository initialized"
echo "✅ Files added and committed"
echo "✅ GitHub repository created"
echo "✅ Code pushed to main branch"
echo ""
echo "💡 Next steps:"
echo "• Clone the repo on other machines: git clone https://github.com/linoymalakkaran/$REPO_NAME.git"
echo "• Make changes and push: git add . && git commit -m 'your message' && git push"
