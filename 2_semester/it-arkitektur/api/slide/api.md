---
title: SOA & API
theme: gaia
_class: lead
paginate: true
marp: true
backgroundColor: #fff
size: 4K
@auto-scaling true
markdown.marp.enableHtml
---

![bg right:40% 181%](https://github.com/officegeek/image/raw/main/agenda.jpg)
# Web Services
### Agenda

- SOA
- API
- Restcountries API - *Code*
- Spotify API - *Code*
- ToDo FastAPI App - *Demo*

<!-- _footer: Tue Hellstern-->

---

![bg right:50% 130%](https://github.com/officegeek/image/raw/main/bigballofmud.png)
# Why We Need Software Architecture
Architecture-less software becomes **unmanageable** with time and hence enhance the maintenance cost drastically with every new iteration.

As each and every change becomes costlier, this approach is termed as **Big Ball of Mud**

---

# Architectural approaches
Over the years of evolutions in software design, developers have come up with different architectural approaches in order to avoid the issues of architecture less software design - **Big Ball of Mud**.

The most *famous* ones.

- *Layered Architecture*
- *Tiered Architecture*
- **Service Oriented Architecture (SOA)**

---

![bg right:40% 100%](https://github.com/officegeek/image/raw/main/Layered_Architecture.png)
# Layered Architecture
This approach works on principle of **separation of concerns**.

Software design is **divided into layer** laid over one another. Each layer performs a **dedicated responsibility**.

Architecture divides the software into the following layers

- **Presentation Layer**
- **Business Logic Layer**
- **Data Link Layer**

---

![bg right:27% 100%](https://github.com/officegeek/image/raw/main/Layered_Architecture.png)
# Layered Architecture

**Advantages**
- Simpler to implement
- Abstraction due to separation of concerns among layers
- Isolation between layers
- More manageable due to **low coupling**

**Disadvantage**
- Less scalability
- Monolith structure, lacking ease of modifications
- Data has to flow from each layer one after another

---

![bg 90%](https://github.com/officegeek/image/raw/main/Layered_Architecture_2.png)

<!-- _footer: Oracle -->

---

# Tiered Architecture
Divided the software into into **tiers** based on **client server communication principle**.

Can have **one**, **two** of **n-tiered** system separating the responsibilities among data provider and the consumer.

---

# Single Tiered System
In this approach, **single system** is responsible to work **as client as well as server** and can offer ease of deployment eliminating the need of *Inter System Communications* (ISC).

This system are suitable **only for small scale single user application** and should not be used for multi user complex applications.

---

![bg right:40% 100%](https://github.com/officegeek/image/raw/main/Teir_2.png)
# 2-Tiered System
This system consist of **two physical machines**

- **server**
- **client**

It provides **isolation** among the **data management** operations and **data processing** and representation operations.

- *Client* holds **Presentation, Business Logic and Data link layer**.
- *Server* holds the **Data stores** such as Databases

---

![bg right:30% 100%](https://github.com/officegeek/image/raw/main/Teir_3.png)
# 3-Tiered / n-Tiered System
**Highly scalable** both horizontally and vertically. Implementing n-tiered architecture is generally **costlier but offer high performance**. Hence it is preferred in **large complex software solutions**.

It can be **combined** with advanced **Service Oriented Architectural** style to generate highly sophisticated model.

It is **recommended** to use this architecture when the software is **complex** and requires **performance** as well as **scaling** as it can be a costlier approach in terms of resources as well as time.

---

![bg right:28% 100%](https://github.com/officegeek/image/raw/main/Layers_Tiers_2.jpg)
# Difference between Layers and Tiers

**Layer**
*Layers are the **logical** separation of code*

- Presentation Layer or *UI Layer*
- Business Layer or Business Logic Layer
- Data Access Layer and/or Data Layer

**Tiers**
*Tiers are the **physical** deployment of layers*
- Presentation Tier - *UI Tier*
- The Application Tier or Business Tier 
- The Data Access Tier 
- The Database Tier – *SQL Server, MySQL*

---

<!-- _backgroundColor: black -->
<!-- _color: white -->
# SOA <!-- fit -->

---

![bg 40%](https://github.com/officegeek/image/raw/main/soainabox.jpg)

---

![bg 100%](https://github.com/officegeek/image/raw/main/singel_soa_micro.png)

---

![bg 39%](https://github.com/officegeek/image/raw/main/SOA_Before.png)

---

![bg right:50% 100%](https://github.com/officegeek/image/raw/main/soa.png)
# SOA - Service Oriented Architecture

**SOA** can be described as an **approach** to the **development process**, which, based on the business, leads to the development, acquisition and use of IT solutions as a set of business support, **reusable and flexible services**.

---

- SOA organize contexts in a **vertical way**
- **Multiples components** can be part of the **same service** providing multiples capabilities (operations)
- An SOA service is like a bounded context
- SOA fosters **reuse** and composition inside the **same domain**
- Each SOA service represents a group of **smaller components**
- In SOA, it is common to see all **services** using the **same technology** stack and the **same database technology**

---

![bg 70%](https://github.com/officegeek/image/raw/main/SOA_Before_After.png)

---

<!-- _backgroundColor: black -->
<!-- _color: white -->
# API<!-- fit -->

---

![bg right:25% 180%](https://github.com/officegeek/image/raw/main/white-question-mark.png)
# What is an API? <!-- fit -->

### Find the best, in your opinion, **description of an API**
### Come up with some **examples of API's**

---

![bg right:50% 100%](https://github.com/officegeek/image/raw/main/interfaces.jpg)

# What is an API? <!-- fit -->
**API** stands for **Application Programming Interface**

## But what is a *Interface*?

---

![bg right:50% 100%](https://github.com/officegeek/image/raw/main/car_interface.jpg)

# Interfaces <!-- fit -->
*Every* device you use has some kind of **interface**. 

We use these interfaces to get the device to **do the thing we want**.

We **don't need to understand** the underlying functionality.

---

![bg right:40% 100%](https://github.com/officegeek/image/raw/main/api_abstarction.png)

## Abstraction <!-- fit -->

API's provide a layer of abstraction for the user. 

Abstraction **hides everything but what is relevant** to the user, making it *simple* to use.

*An API is how applications talk to each other*

---

![bg right:20% 430%](https://github.com/officegeek/image/raw/main/api_fullpage.png)
# API - Application Programming Interface
**API** is a software intermediary that allows two applications to talk to each other.

You can ask an API for **data**, and they API will return what you want, usually in the form of **JSON** or **XML**. You can then use the data in your application.

*Every time you use an app like Facebook, send an SMS, or check the weather on your phone, you’re using an API.*

---

# API's as a way to serve your customers
Some companies are packaging API's as products. 

- Weather Underground sells access to its weather data API
    - www.wunderground.com

- e-conomic has an API where the customers can access there data
    - www.e-conomic.com

*When a company offers an API to their customers, it just means that they’ve built a set of dedicated URLs that return pure data responses — meaning the responses won’t contain the kind of presentational overhead that you would expect in a graphical user interface like a website.*

---

![bg right:50% 90%](./image/OpenAPI_Logo.png)

# OpenAPI
There is the **OpenAPI Specification** (*OAS*), a technical specification that describes certain APIs, and there is the **OpenAPI Initiative** (*OAI*), an organization that enables specifications like OAS to thrive.

[www.openapis.org](https://www.openapis.org)

---

# What is the difference between a Web service and an API?
An **API** is an **interface** that allows you to build on the data and functionality of another application, while a **web service** is a **network-based resource** that fulfills a **specific task**. 

Yes, there's **overlap between the two**: 

- **All** web services are API's
- **Not all** API's are web services
- Web services require a network. APIs can be on- or offline, web services must use a network
- **Web services** are usually associated with **SOA**
- **API's are protocol agnostic**. API's can use any protocols or design styles - **Web services** use SOAP, REST, UDDI, XML-RPC

---

![bg right:50% 90%](./image/fastapi.png)
# FastAPI
FastAPI is a modern, **fast** (*high-performance*), **web framework** for **building APIs** with Python 3.7+ based on standard Python type hints.

---

<iframe width="1100" height="1000" src="https://www.youtube.com/embed/0RS9W8MtZe4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

---

![bg right:50% 138%](./image/flask_fastapi.png)

# Flask <> FastAPI 
## When to use Flask?
- To develop web applications
- To develop quick prototypes

## When to use FastAPI?
- To develop APIs from scratch
- To lower the number of bugs and errors in code

---

![bg 47%](./image/Python_Fast_API_vs_Flask.jpg)

---

![bg right:62% 80%](https://github.com/officegeek/image/raw/main/ibm_Microservices_SOA_API.jpg)
# Microservices, SOA, and API's combined

<!-- _footer: https://developer.ibm.com/tutorials/1601_clark-trs -->

---

<!-- _backgroundColor: black -->
<!-- _color: white -->
# API DEMO <!-- fit -->
![bg right 40% 148%](https://github.com/officegeek/image/raw/main/api_demo.jpg)

---

![bg right:66% 108%](https://github.com/officegeek/image/raw/main/restcountries_api.jpg)
# API - restcountries

- [Python file - .py](https://github.com/officegeek/image/raw/main/code/restcountries.py)
- [Jupyter Lab - .ipynb](https://github.com/officegeek/image/raw/main/code/restcountries.ipynb)


<!-- _footer: https://pypi.org/project/python-restcountries -->

---

![bg right:40% 140%](https://github.com/officegeek/image/raw/main/spotify_logo.png)
# Spotify API <!-- fit -->
Spotify provides software and app developers access to some of their data about users, playlists, and artists through a Web API.

- [Spotify_API_Spotipy.pdf](https://github.com/officegeek/image/raw/main/pdf/Spotify_API_Spotipy.pdf)
- [Jupyter Lab Code .ipynb](https://github.com/officegeek/image/raw/main/code/Spotipy.ipynb)
- [Python Code .py](https://github.com/officegeek/image/raw/main/code/Spotipy.py)

---

![bg right:55% 110%](./image/news.jpg)
# Newscatcher

- [Demo GitHub Reporitory](https://github.com/TueHellsternKea/newsapi)
- https://newscatcherapi.com

---

![bg right:40% 90%](https://github.com/officegeek/image/raw/main/ibm_soa_pdf.jpg)
# IBM - SOA <!-- fit -->

[SOA for Dummies](https://github.com/officegeek/image/raw/main/pdf/SOA_for_dummies.pdf)

---

# Links
- https://martinfowler.com/microservices
- https://www.ibm.com/cloud/learn/soa
- https://morioh.com/p/422b616d71a2
- https://fastapi.tiangolo.com/