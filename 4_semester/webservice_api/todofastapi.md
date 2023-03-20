---
layout: default
title: FastAPI ToDo - Demo
grand_parent: 4. Semester
parent: Web Service API
nav_order: 50
---

<span class="fs-1">
[HOME](./index.md){: .btn .btn-blue }
</span>

# FastAPI ToDo - Demo
This is a smalle demo of a ToDo API cerated with FastApi.

The dome contains 3 file and the structure is:

- main.py
- database.json
- *templates*
    - todolist.html

You can get the files at [github.com/TueHellsternKea/fastapitodo](https://github.com/TueHellsternKea/fastapitodo)

![](./_image/fastapitodo.jpg)

## main.py
This is the Python code file

```python
from fastapi import FastAPI, Request
from fastapi.responses import RedirectResponse
from fastapi.templating import Jinja2Templates
import json

app = FastAPI()
templates = Jinja2Templates(directory="templates")

@app.get("/")
async def root(request: Request):
    with open('database.json') as f:
        data = json.load(f)
    return templates.TemplateResponse("todolist.html",{"request":request,"tododict":data})

@app.get("/delete/{id}")
async def delete_todo(request: Request, id: str):
    with open('database.json') as f:
        data = json.load(f)
    del data[id]
    with open('database.json','w') as f:
        json.dump(data,f)
    return RedirectResponse("/", 303)

@app.post("/add")
async def add_todo(request: Request):
    with open('database.json') as f:
        data = json.load(f)
    formdata = await request.form()
    newdata = {}
    i=1
    for id in data:
        newdata[str(i)] = data[id]
        i+=1
    newdata[str(i)] = formdata["newtodo"]
    print(newdata)
    with open('database.json','w') as f:
        json.dump(newdata,f)
    return RedirectResponse("/", 303)
```

## database.json
This is a simpel"database" file created in json

```json
{"1": "4. semester api", "2": "GitHub demo", "3": "Azure demo", "4": "Test and test"}
```

## todolist.html
This is the HTML styling file of the ToDo list,

The file are in the folder **templates**, it is a basic HTML file.

```html

```

## Docs ToDo
![](./_image/tododocs.jpg)
