---
layout: default
title: Detect Images from Zalando
has_children: true
parent: AI - Deep Learning
grand_parent: 4. Semester
nav_order: 40
---

<span class="fs-1">
[HOME](./index.md){: .btn .btn-blue }
</span>

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

# Detect Images from Zalando
This guide trains a neural network model to classify images of clothing, like sneakers and shirts. It's okay if you don't understand all the details; this is a fast-paced overview of a complete TensorFlow program with the details explained as you go.

Example from TensorFlow - [www.tensorflow.org/tutorials/keras/classification](https://www.tensorflow.org/tutorials/keras/classification)

## Data
Fashion-MNIST is a dataset of Zalando's article images—consisting of a training set of 60,000 examples and a test set of 10,000 examples.
Each example is a 28x28 grayscale image, associated with a label from 10 classes.

![](https://tensorflow.org/images/fashion-mnist-sprite.png)

## JupyterLab file
Get the Jupyter Lab file her - [classification.ipynb](./classification.ipynb)

# Data Center - Cause analysis of problems
 The use case to solve relates to root cause analysis of problems found in a data center. 
 
 We have a data center that runs a number of software services. Service failures do happen from time to time, and the data center team needs to quickly troubleshoot and identify the root cause. 
 
 The team wants to build a model that can predict root causes reported by customers based on the telemetry generated and errors noticed. 
 
 They already have a system monitoring tool that tracks CPU, memory, and application latency characteristics of their servers. 
 
 In addition, they also track errors reported by their applications. Can we use this information to predict root causes of the issues noticed? 
 
 **The problem statement is as follows**: using data about *CPU loads, memory load, network delays, and three types of errors observed*, build a deep learning model to predict the root cause of the error. 
 
 A data set is available that has one record for each of these incident, indicating if any of the load issues or errors were noticed when the problem happened. 
 The data set is available in the **root_cause_analysis.csv** file. 
 
 Each record in the file has a unique identifier ID that represents the incident. There are seven feature variables:
 
- CPU_LOAD
- MEMORY_LEAK_LOAD
- network DELAY
- ERROR_1000
- ERROR_1001
- ERROR_1002
- ERROR_1003

Each of them is a Boolean value of 1 or 0. The target variable is ROOT_CAUSE. 

It has three possible values:

- MEMORY_LEAK
- NETWORK_DELAY
- DATABASE_ISSUE

We want to build a model to **predict the root cause** based on the other values provided.

Get the Jupyter Lab file her - [IncidentRootCauseAnalysis.ipynb](./IncidentRootCauseAnalysis.ipynb)