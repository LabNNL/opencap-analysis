@echo off
REM Open a terminal in the current directory
cd /d %~dp0

REM Activate the conda environment 'opencap-analysis'
call conda activate opencap-analysis

REM Run the main.py script
python main.py