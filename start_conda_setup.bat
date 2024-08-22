@echo off
setlocal enabledelayedexpansion

:: Prompt the user to enter the directory path
set /p "targetDir=Enter the path where the repository will be cloned (if there are spaces, please add quotation marks at the beginning and end of the path): "

:: If the user input is empty, prompt again
if "%targetDir%"=="" (
    echo No directory provided. Exiting.
    exit /b
)

:: Create and activate the Conda environment
call conda create -n opencap-analysis python=3.11 -y
call conda activate opencap-analysis

:: Install OpenSim
call conda install -c opensim-org opensim=4.5=py311np123 -y

:: Change to the target directory
cd /d "%targetDir%"

:: Clone the repository and install dependencies
call git clone https://github.com/LabNNL/opencap-analysis.git
cd opencap-analysis
call python -m pip install -r requirements.txt

echo //////////////////////
pause
