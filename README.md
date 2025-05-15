# Gemma Mini AI - Plug and Play

A lightweight, open-source AI assistant using [Gemma 3 1B Instruction-Tuned](https://pixeldrain.com/u/pM9qtTWJ), packed into a minimal `.gguf` format (~600MB). Works even on weak hardware with CPU-only inference using [Ollama](https://ollama.com/).

---
(⚠️ .safetensors model is not included!)

---

## 🚀 Features
- Ultra-light 1B model (600MB) for fast startup and low RAM
- Instruction-tuned for chat, QA, casual assistant tasks
- Works offline
- Custom system prompt support
- Instant setup with script

---

## 🖥 Minimum System Requirements
- **CPU**: Any modern quad-core (Intel i5 8th gen+, AMD Ryzen 3+)
- **RAM**: 4 GB minimum (8 GB recommended)
- **Storage**: ~2 GB free space
- **OS**: Windows, macOS, or Linux
- **GPU**: Not required

---

## 📦 Installation

### 1. Install Ollama
- [Download for Windows, Mac, Linux](https://ollama.com/download)

### 2. Download Model
- [Gemma 3 1b](https://pixeldrain.com/u/pM9qtTWJ)

### 2. Clone the repo
```bash
git clone https://github.com/FarkhodovIslom/GemmaAI-1b-raw.git
cd GemmaAI-1b-raw
```

### 3. Put your model file
Download your `.gguf` model (e.g. `gemma-3-1b-XXS.gguf`) and place it in the `core/` folder.

### 4. Create the model in Ollama
```bash
ollama create gemma-mini -f Modelfile
```

### 5. Run it
```bash
ollama run gemma-mini
```

---

## ⚙️ Modelfile (edit for your prompt)
```bash
FROM ./core/gemma-3-1b-it-UD-IQ2_XXS.gguf

PARAMETER temperature 0.7
PARAMETER top_p 0.9

SYSTEM "You're a helpful assistant that replies concisely and casually, with a touch of humor."
```

---

## 🧪 Example prompt
```bash
> What's the difference between JavaScript and TypeScript?
```

---

## 📁 File structure
```
.
├── core/
│   └── gemma-3-1b-XXS.gguf
├── Modelfile
├── README.md
├── params
├── setup.sh
└── setup.bat
```

---

## 🔥 Credits
Built on Google Gemma by the Hanzo-Dev

---

## 🤝 License
MIT
