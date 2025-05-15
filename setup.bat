@echo off
echo [*] Creating Ollama model "gemma-mini"...

if not exist core\ (
    echo [!] "core\" folder not found.
    exit /b
)

if not exist core\gemma-3-1b-XXS.gguf (
    echo [!] Model file not found in "core\".
    exit /b
)

ollama create gemma-mini -f Modelfile

if %errorlevel% neq 0 (
    echo [!] Failed to create model.
    exit /b
)

echo [✓] Done. Run with: ollama run gemma-mini
pause
