@echo off

:: Crée un environnement Conda et active-le
call conda create -n opencap-analysis python=3.11 -y
call conda activate opencap-analysis

:: Installe OpenSim
call conda install -c opensim-org opensim=4.5=py311np123 -y

:: Cloner le dépôt opencap-analysis et installer les dépendances
call cd C:\Users\NNL_L\OneDrive\Documents\Go
call git clone https://github.com/LabNNL/opencap-analysis.git
call cd opencap-analysis
call python -m pip install -r requirements.txt

echo //////////////////////

pause
