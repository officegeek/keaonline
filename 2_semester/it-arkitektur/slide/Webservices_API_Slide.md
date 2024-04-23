---
title: API
theme: gaia
_class: lead
paginate: true
marp: true
backgroundColor: #fff
size: 4K
@auto-scaling true
markdown.marp.enableHtml
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

- **Weather Underground** sells access to its weather data API
    - [www.wunderground.com](https://www.wunderground.com)

- **e-conomic** has an API where the customers can access there data
    - [www.e-conomic.com](https://www.e-conomic.com)

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

[Deepnote Python code](https://deepnote.com/workspace/tue_hellstern-9dbbf77c-5ba3-47b4-8076-45f48827bd4a/project/Power-BI-Data-793be997-9faf-4176-bbde-95fd1857ecf2/notebook/API_Countries-1e88bf4178334c87858d543137b09a90)


<!-- _footer: https://pypi.org/project/python-restcountries -->

---

![bg right:40% 140%](https://github.com/officegeek/image/raw/main/spotify_logo.png)
# Spotify API <!-- fit -->
Spotify provides software and app developers access to some of their data about users, playlists, and artists through a Web API.

- [Spotify for Developers](https://developer.spotify.com/dashboard)
- [Python Code Deepnote](https://deepnote.com/workspace/tue_hellstern-9dbbf77c-5ba3-47b4-8076-45f48827bd4a/project/Power-BI-Data-793be997-9faf-4176-bbde-95fd1857ecf2/notebook/Spotify-57eae20546384a4fb3d108540bbc87bb)

---

![](./image/Spotify_app.jpg)

---

![](./image/spotify_api_key.jpg)

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