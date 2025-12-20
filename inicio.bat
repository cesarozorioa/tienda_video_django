@echo off
REM Activa el entorno virtual de Python
REM Comprobar si la carpeta "env" existe
if not exist "env\Scripts\activate.bat" (
    echo Creando entorno virtual...
    python -m venv env
)
call env\Scripts\activate.bat
REM Instala las dependencias desde requirements.txt
if exist requirements.txt (
    echo Instalando dependencias...
    pip install -r requirements.txt
) else (
    echo No se encontro requirements.txt
)   
REM Inicia la aplicacion de Python
echo Iniciando la aplicacion...
