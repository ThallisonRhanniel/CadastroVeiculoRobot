*** Settings ***
Resource  ../../resource/main.robot
#executa antes de cada teste
Test Setup  Acessar site e fazer Login
#executa ao finalizar os testes
Test Teardown  Fechar navegador
*** Test Cases ***

TC01 - Navegando para Pagina de estoques
    Clico e Navego para pagina de estoque