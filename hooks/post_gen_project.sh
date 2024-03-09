#!/bin/bash

python3 -m venv --prompt {{ cookiecutter.env_prompt }} env
source env/bin/activate
pip install -r requirements/local.txt
git init
git add .
git commit -m "Initial commit"
if [ "{{ cookiecutter.github_repo}}" != "no_github_repo" ]; then
  git remote add origin {{ cookiecutter.github_repo }}
fi

if [ "{{ cookiecutter.__pre_commit }}" != "y" ]; then
    rm .pre-commit-config.yaml
fi

if [ "{{ cookiecutter.__editorconfig }}" != "y" ]; then
    rm .editorconfig 
fi

