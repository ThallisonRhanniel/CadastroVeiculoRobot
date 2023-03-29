*** Settings ***
Resource  ../main.robot

*** Variables ***
&{Estoque}
#Elementos da página de Login
...    A_Gerenciar_Estoque=//a[@href="/estoque/pesquisa"] 
...    Button_Excluir_Carro=//button[@class="btn btn-danger"]
...    Button_Excluir_Carro_Popup=//button[@id="excluir-veiculo-button"]
...    Button_Navegar_Inicio=//img[@src="/image/logo-vipleiloes.png"]
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


Removo o carro com cadastro incompleto
    ${Result}    Run Keyword And Return Status     Page Should Contain Element  ${Estoque.Button_Excluir_Carro}
    IF  ${Result}==$True 
        Wait Until Element Is Visible      ${Estoque.A_Gerenciar_Estoque}          10
        Sleep                              1s
        Click Element                      ${Estoque.Button_Excluir_Carro}
        Wait Until Element Is Visible      ${Estoque.Button_Excluir_Carro_Popup}          10
        Sleep                              1s
        Click Element                      ${Estoque.Button_Excluir_Carro_Popup}
    END
    
Navegar para o inicio
    Wait Until Element Is Visible      ${Estoque.Button_Navegar_Inicio}          10
    Sleep                              1s
    Click Element                      ${Estoque.Button_Navegar_Inicio}