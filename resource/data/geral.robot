*** Settings ***
Resource  ../main.robot

*** Variables ***
&{geral}
...    Url=https://localhost:44341/conta/entrar?ReturnUrl=%2F
...    Browser=chrome