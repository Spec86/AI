@echo off

REM ------------------------------
REM Optimized WebUI launch for RTX 5070Ti with ControlNet + Refiner
REM ------------------------------

REM Не указываем PYTHON, чтобы использовать установленный системный Python 3.10.6
set PYTHON=

REM Если используешь git-поддержку, можно указать путь к git, иначе оставляем пустым
set GIT=

REM venv создаётся в папке
set VENV_DIR=

REM Параметры запуска WebUI
REM Параметры для постоянного использования ControlNet + Refiner
set COMMANDLINE_ARGS=--medvram --enable-insecure-extension-access --xformers ^
 --cuda-malloc --cuda-stream --pin-shared-memory --no-half-vae --opt-split-attention ^
 --lowram

REM Пропускаем создание venv, если он уже существует (ускоряет запуск)
set SKIP_VENV=0

@REM Uncomment following code to reference an existing A1111 checkout.
@REM set A1111_HOME=Your A1111 checkout dir
@REM
@REM set VENV_DIR=%A1111_HOME%\\venv
@REM set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% ^
@REM  --ckpt-dir %A1111_HOME%\\models\\Stable-diffusion ^
@REM  --hypernetwork-dir %A1111_HOME%\\models\\hypernetworks ^
@REM  --embeddings-dir %A1111_HOME%\\embeddings ^
@REM  --lora-dir %A1111_HOME%\\models\\Lora

REM Запуск WebUI
call webui.bat
