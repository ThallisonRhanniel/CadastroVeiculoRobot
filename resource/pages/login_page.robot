*** Settings ***
Resource  ../main.robot

*** Variables ***
&{Login}
#Elementos da página de Login
...    Input_Email=//input[@id="Entrar_Login"]
...    Input_Senha=//input[@id="Entrar_Senha"]
...    Button_Entrar=//button[@class="btn btn-primary w-100"]

#.......
#...    Button_Cookie=//button[@id="cookie_stop"]
#...    Input_Senha=//input[@placeholder="Password"]
#...    Input_EmailLogin=//input[@placeholder="Email"] 
#...    Input_SenhaLogin=//input[@placeholder="Password"]
#...    Button_Logar=//span[contains(text(),"Login")]
#...    A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]


*** Keywords ***

Fazer login
    Wait Until Element Is Visible      ${Login.Input_Email}           10
    Input Text                         ${Login.Input_Email}      ${dados_login.Email}
    Wait Until Element Is Visible      ${Login.Input_Senha}          10
    Input Text                         ${Login.Input_Senha}      ${dados_login.Senha}
    Sleep                              1s
    Click Element                      ${Login.Button_Entrar}