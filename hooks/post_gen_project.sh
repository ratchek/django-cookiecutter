#!/bin/bash

python3 -m venv --prompt {{ cookiecutter.env_prompt }} env
source env/bin/activate
pip install -r requirements.txt