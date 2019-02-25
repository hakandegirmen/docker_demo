#!/usr/bin/env bash

# create virtual environment
virtualenv venv -p python3

# activate virtual env
source venv/bin/activate

# install dependencies
pip install -r requirements.txt

# run the flask app
python flask_demo.py
