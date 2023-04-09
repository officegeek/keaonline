---
layout: default
title: Ray
grand_parent: 4. Semester
parent: Distribuerede systemer
nav_order: 50
---

<span class="fs-1">
[HOME](./index.md){: .btn .btn-blue }
</span>

# Ray
Ray is an open source project that makes it simple to scale any compute-intensive Python workload — *from deep learning to production model serving*.

Ray is a fast, simple distributed execution framework that makes it easy to scale your applications and to leverage state of the art machine learning libraries. Using Ray, you can take Python code that runs sequentially and transform it into a distributed application with minimal code changes. 

## Book - Learning Ray
Learning Ray is the first and only comprehensive book on Ray and its growing ecosystem. Whether you are new to Ray or looking to go deeper on a specific libraries, this will serve as a helpful resource to jumpstart your learning.

Learning Ray is authored by core members of the Ray engineering team: *Max Pumperla, Richard Liaw, and Edward Oakes.*

In this book, you’ll learn:

- Internal workings of Ray
- How to use Ray locally and on a cloud/cluster
- Scaling machine learning workloads using Ray
- Deep dives on Ray libraries for distributed training, reinforcement learning, hyperparameter tuning, and model serving.

[You can get the book for free her](https://www.anyscale.com/asset/book-learning-ray-oreilly) or [Direct download - PDF](https://assets.ctfassets.net/xjan103pcp94/7gZbuzVlgVWMfynUTQstOc/da2cfa91b84184fd5f653803e5fc8443/Learning_Ray.pdf)

## Generating Fibonnaci series
Demo of two Python functions: 

1. Locally
2. Ray cluster

## Jupyter Lab
JupyterLab is the latest web-based interactive development environment for notebooks, code, and data.

Try to run this code in Jupyter Lab.

**Jupyter Lab Desktop**

JupyterLab App is the cross-platform standalone application distribution of JupyterLab.

Version are available for:

- Windows
- macOS
- Linux

Se moere at [github.com/jupyterlab/jupyterlab-desktop](https://github.com/jupyterlab/jupyterlab-desktop)


**Local version af Jupyter Lab**

Jupyter Lab are available for installation via the Python Package Index.

Install JupyterLab with pip:
```python
pip install jupyterlab
```

See more at [jupyter.org/install](https://jupyter.org/install)

**Online version**

You can run Jupyter Lab online at: [jupyter.org/try
](https://jupyter.org/try) 

**Azure Virtal Machine**

Try to run this code in Jupyter Lab on your Virtual machine on Azure - [Step by Step Guide](https://kea.officegeek.dk/4sem/02-Virtualisering/Jupyter_Lab.html)

- Start the VM on the Azure Portal
- Connect to the VM using SSH - Putty or Terminal
- Start Jupyter Lab - **jupyter lab --no-browser --ip "*"**

## Code
```python
# Only first time!
!pip3 install numpy
!pip install -U "ray[default]"
```

```python
# Import mudules
import os
import time
import logging
import ray

import numpy as np
from numpy import loadtxt
```

```python
# Start Ray
ray.init()
```

```python
# Local execution 
def generate_fibonacci(sequence_size):
    fibonacci = []
    for i in range(0, sequence_size):
        if i < 2:
            fibonacci.append(i)
            continue
        fibonacci.append(fibonacci[i-1]+fibonacci[i-2])
    return len(fibonacci)
```

```python
# Get the number of cores on the computer
os.cpu_count()
```

```python
# Normal Python in a single process 
def run_local(sequence_size):
    results = [generate_fibonacci(sequence_size) for _ in range(os.cpu_count())]
    return results
```

```python
# Run local
%%time
run_local(100000)
```

```python
# Distributed on a Ray cluster
def run_remote(sequence_size):
    results = ray.get([generate_fibonacci_distributed.remote(sequence_size) for _ in range(os.cpu_count())])
    return results
```

```python
# Run remote
%%time
run_remote(100000)
```

```python
# Close Ray
ray.shutdown()
```

## Jupyter Lab file
[Download the Jupyter Lab file (*ipynb*)](./code/Fibonnaci.ipynb)

