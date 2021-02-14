#!/bin/bash
# Mit diesem Skript soll alles installiert werden können.

# Global configuration
py_venv_path=./venv

# First, check if python is setup correctly
py_version=$(python --version) || $(python3 --version)
pyexec=$(which python) || $(which python3)

if [[ $py_version == "Python 3."* ]] ;
then
    echo "Python version: $py_version"
else
    echo "Python version not supported: $py_version"
    exit 1
fi

echo "Using python from $pyexec"

$pyexec -c 'import venv'
if [[ ! $? -eq 0 ]] ;
then
    echo "Python module venv is missing. Please install it using pip:\n  pip install venv"
    exit 1
fi

$pyexec Scripts/create-venv.py $py_venv_path

source $py_venv_path/bin/activate

echo "Updating pip to the latest version"
pip install -U pip
echo "Installing required packages..."
pip install -r requirements.txt

python Scripts/bootstrap.py
