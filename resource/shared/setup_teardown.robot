*** Settings ***
Resource  ../main.robot
Resource    ../data/login.robot

*** Keywords ***

Acessar o site
    Open Browser  ${geral.Url}  ${geral.Browser}

Acessar site e fazer Login e remover atendimento em andamento
    Acessar o site
    Fazer login
    Clico e Navego para pagina de estoque
    Removo o carro com cadastro incompleto
    Navegar para o inicio

Fechar navegador    
    Close Browser