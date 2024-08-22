@echo off

:: Exécute la commande Set-ExecutionPolicy en mode administrateur
powershell -Command "Start-Process powershell -ArgumentList 'Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force' -Verb RunAs -Wait"

:: Vérifie si l'opération précédente a été réussie
if %errorlevel% neq 0 (
    echo La commande Set-ExecutionPolicy a échoué.
    pause
    exit /b %errorlevel%
)
