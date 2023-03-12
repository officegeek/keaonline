---
layout: default
title: Machine Learning
nav_order: 20
parent: Machine Learning
grand_parent: Know Your Data
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

# Linear Regression in Python

## Regression is?
- Regression analysis is a statistical method for estimating the relationship between a dependent variable and one or more independent variables
- Regression techniques are used in all branches of the sciences and finance
- The two main uses of regression are:
    - **Prediction**: Forecast the outcome of an event/state/object from previous knowledge
    - **Inference**: Determine how an event/state/object

# scikit-learn
We will use the module **scikit-learn** to implement linear regression and polynomial regression

Linear regression is the most widely used regression method

f(x) = b_{0} + b_{1}x_{1} + b_{2}x_{2} + ... b_{r}x_{r}

**scikit-learn** is built on top of NumPy


# Salary example
We will be using salary dataset. 

The dataset have 2 columns:

– Years of Experience
- Salary

The dataset is in Excel format.

- [Jupyter Lab Salary File](./data/linear/SalaryData.ipynb)
- [SalaryData.xlsx](./data/linear/SalaryData.xlsx)

# Webshop - Age/Spend - Assignment
Purchases distributed on the different age groups, from a webshop.

[Assignment](./data/linear/Webshop.md)