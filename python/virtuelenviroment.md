---
layout: default
title: Virtual Environment
parent: Python Guides
has_children: false
nav_order: 20
---

{:toc}

# Create a virtual environment
Open the directory where you want to create your project. 

Open a Terminal and navigate to the same directory and run the following commands to create a virtual environment.

    python -m venv venv

# Activat
Now you have our virtual environment, activate it.

    venv\Scripts\activate

# Install modules
You can install modules in 2 ways:

## pip install 
Use **pip install** and install each module one at the time

    pip3 install "module name"

## requirements.txt
You can create an *requirements.txt* file and list the modules in that file, then install all the modules:

    pip3 install -r requirements.txt
