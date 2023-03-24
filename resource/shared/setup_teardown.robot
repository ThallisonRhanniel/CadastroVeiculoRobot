*** Settings ***
Resource  ../main.robot
Resource    ../data/login.robot

*** Keywords ***

Acessar o site
    Open Browser  ${geral.Url}  ${geral.Browser}

Acessar site e fazer Login
    Acessar o site
    Fazer login

Fechar navegador    
    Close Browser