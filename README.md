# 🤖 SQL Agent with Ollama, HuggingFace & OpenAI

A powerful and flexible SQL agent that converts natural language questions into SQL queries and provides human-readable answers. Supports multiple LLM providers with automatic fallback: **Ollama** (local) → **HuggingFace** (free) → **OpenAI** (premium).

![Python](https://img.shields.io/badge/python-v3.8+-blue.svg)
![Jupyter](https://img.shields.io/badge/jupyter-notebook-orange.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## ✨ Features

- 🦙 **Multiple LLM Support**: Ollama, HuggingFace, and OpenAI with intelligent fallback
- 🗄️ **Auto-Setup**: Automatically downloads Chinook sample database if missing
- 📁 **Portable**: Uses relative paths, works in any directory
- 🔒 **Secure**: API keys protected with `.gitignore`
- 🚀 **Easy to Use**: Simple functions for natural language database queries
- 📊 **Rich Examples**: Pre-loaded with music database for testing

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/linoymalakkaran/sql-agent-ollama.git
cd sql-agent-ollama
```

### 2. Install Dependencies
Open `agent.ipynb` in Jupyter and run the first cell:
```python
%pip install langchain langchain-openai langchain-huggingface langchain-community python-dotenv langchain-ollama
```

### 3. Setup Environment (Optional)
Create a `.env` file in the project directory:
```env
# Choose one or more:
OPENAI_API_KEY=sk-your-openai-key-here
HUGGINGFACEHUB_API_TOKEN=hf_your-huggingface-token-here
```

### 4. Run the Notebook
Execute cells in order. The database will be downloaded automatically!

## 📖 Usage Examples

### Basic Usage
```python
# Create LLM (tries Ollama → HuggingFace → OpenAI)
working_llm = create_llm("auto")

# Ask natural language questions
answer_user_query("How many artists are in the database?", llm=working_llm)
answer_user_query("Show me rock bands", llm=working_llm)
answer_user_query("Which artist has the most albums?", llm=working_llm)
```

### Direct SQL Queries
```python
# Run direct SQL
simple_db_query("SELECT * FROM Artist LIMIT 5")
simple_db_query("SELECT COUNT(*) FROM Track")
```

### Helper Functions
```python
# Database information
show_database_info()

# Project setup verification
check_project_setup()

# Simple question interface
ask_database("What genres are available?")
```

## 🛠️ LLM Provider Setup

### Option 1: Ollama (Recommended - Local & Free)
1. Install Ollama: https://ollama.ai/
2. Start Ollama: `ollama serve`
3. Download a model: `ollama pull llama3.2`

### Option 2: HuggingFace (Free API)
1. Get token: https://huggingface.co/settings/tokens
2. Add to `.env`: `HUGGINGFACEHUB_API_TOKEN=hf_your_token`

### Option 3: OpenAI (Premium)
1. Get API key: https://platform.openai.com/api-keys
2. Add to `.env`: `OPENAI_API_KEY=sk-your_key`

## 📁 Project Structure

```
sql-agent-ollama/
├── agent.ipynb          # Main notebook with SQL agent
├── Chinook.db          # SQLite database (auto-downloaded)
├── .env                # API keys (create manually)
├── .gitignore          # Git ignore rules
├── README.md           # This file
├── setup-github.sh     # GitHub setup script (Linux/Mac)
└── setup-github.bat    # GitHub setup script (Windows)
```

## � Available Functions

| Function | Description |
|----------|-------------|
| `create_llm("auto")` | Creates best available LLM with fallback |
| `answer_user_query(question, llm)` | Complete SQL agent pipeline |
| `simple_db_query(sql)` | Direct SQL query execution |
| `ask_database(question)` | Simple question interface |
| `show_database_info()` | Display database statistics |
| `check_project_setup()` | Verify all files are present |
| `download_chinook_if_missing()` | Download database if needed |

## 🗄️ Database Schema (Chinook)

The Chinook database contains:
- **Artists**: 275 music artists
- **Albums**: 347 albums
- **Tracks**: 3,503 songs
- **Genres**: 25 music genres
- **Customers**: Customer information
- **Invoices**: Sales data

Perfect for testing music-related queries!

## 🆕 New Features

- ✅ **Auto-Download**: Database downloads automatically if missing
- ✅ **Relative Paths**: Portable across different systems
- ✅ **Project Verification**: Built-in setup checker
- ✅ **Multiple LLM Support**: Intelligent provider fallback
- ✅ **Clean Interface**: Simple functions for complex operations

## 🔒 Security

- API keys are protected with `.gitignore`
- Database files are safe to commit (sample data)
- No sensitive information in the repository
- Environment variables loaded securely

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Commit changes: `git commit -am 'Add feature'`
4. Push to branch: `git push origin feature-name`
5. Submit a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Troubleshooting

### Common Issues

**Database not found?**
- Run the prerequisites cell - it will auto-download

**LLM not working?**
- Check your API keys in `.env`
- Try `create_llm("ollama")` if Ollama is running
- Use `check_project_setup()` to verify setup

**Import errors?**
- Run the first cell to install dependencies
- Restart Jupyter kernel if needed

### Support

- 📧 Create an issue on GitHub
- 💬 Check existing issues for solutions
- 📖 Read the notebook documentation

## 🎯 Roadmap

- [ ] Add more database examples
- [ ] Support for custom databases
- [ ] Web interface
- [ ] Advanced query optimization
- [ ] Multi-language support

---

**⭐ Star this repository if you find it useful!**

Made with ❤️ for the AI and SQL community
