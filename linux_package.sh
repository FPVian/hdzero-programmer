#!/bin/bash
sudo apt install python3-pip
sudo apt install python3-venv
sudo apt install python3-tk -y
python3 -m venv .venv --upgrade-deps
source .venv/bin/activate
pip install .
pyinstaller -F HDZeroVTXProgrammer.py
