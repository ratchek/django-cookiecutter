#!/bin/bash

python3 -m venv --prompt {{ cookiecutter.env_prompt }} env
source env/bin/activate
pip install -r requirements.txt
git init
git add .
git commit -m "Initial commit"
git remote add origin {{ cookiecutter.github_url }}
