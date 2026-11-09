@echo off
TITLE Soft Plus Sovereign Hardware Governor - Eng. Barakat
COLOR 0A
ECHO ===========================================================================
ECHO   SOFT PLUS SOVEREIGN HARDWARE UPCYCLING LAUNCHER (ENG. BARAKAT)
ECHO   Target: Intel Core i7-7500U (3.5GHz cTDP) + NVIDIA 940MX (2GB CUDA)
ECHO ===========================================================================

:: Step 1: Set Hybrid AI Environment Variables
SET OLLAMA_NUM_PARALLEL=1
SET OLLAMA_MAX_LOADED_MODELS=1
SET OLLAMA_FLASH_ATTENTION=1
SET OLLAMA_LLM_LIBRARY=cuda_v11

:: Step 2: Set High Process Priority for Inference & Enable Sovereign Governor
ECHO [1/3] Activating Soft Plus Thermal Safety Governor (Si Equation)...
python sovereign_governor.py

:: Step 3: Build & Launch Tailored Model on Recycled Hardware Resources
ECHO [2/3] Building Tailored Sovereign Model (gemma2-2b-q4-sovereign with 8 GPU layers)...
ollama create gemma2-2b-q4-sovereign -f Modelfile

ECHO [3/3] Launching Sovereign AI Engine...
ollama run gemma2-2b-q4-sovereign
PAUSE