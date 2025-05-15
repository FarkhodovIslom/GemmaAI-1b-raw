#!/bin/bash

echo "[*] Creating Ollama model 'gemma-mini'..."

if [ ! -d "core" ]; then
  echo "[!] 'core/' folder not found."
  exit 1
fi

if [ ! -f "core/gemma-3-1b-XXS.gguf" ]; then
  echo "[!] Model file not found in 'core/'"
  exit 1
fi

ollama create gemma-mini -f Modelfile

if [ $? -ne 0 ]; then
  echo "[!] Failed to create model."
  exit 1
fi

echo "[✓] Done. Run it with: ollama run gemma-mini"
