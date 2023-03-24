*** Settings ***
Resource  ../main.robot

*** Variables ***
&{Estoque}
#Elementos da página de Login
...    A_Gerenciar_Estoque=//a[@href="/estoque/pesquisa"] 

#.......
#...    Button_Cookie=//button[@id="cookie_stop"]
#...    Input_Senha=//input[@placeholder="Password"]
#...    Input_EmailLogin=//input[@placeholder="Email"] 
#...    Input_SenhaLogin=//input[@placeholder="Password"]
#...    Button_Logar=//span[contains(text(),"Login")]
#...    A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]


*** Keywords ***

Clico e Navego para pagina de estoque
    Wait Until Element Is Visible      ${Estoque.A_Gerenciar_Estoque}          10
    Sleep                              1s
    Click Element                      ${Estoque.A_Gerenciar_Estoque}