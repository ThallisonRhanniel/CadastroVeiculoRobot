*** Settings ***
Resource  ../main.robot

*** Variables ***
&{Incluir_Veiculo}
#Elementos da página de Login
...    A_Incluir_Veiculo=//a[@href="/?handler=avancar"] 
...    Input_Placa_Veiculo=//input[@id="VeiculoPlaca_Placa"]
...    Input_Chassi=//input[@id="Veiculo_NumeroChassi"]
...    Input_Numero_Motor=//input[@id="Veiculo_NumeroMotor"]
...    Input_Quilometragem=//input[@id="Veiculo_Quilometragem"]
...    Button_Proxima_Pagina=//button[@class="btn btn-wizard btn-tertiary text-uppercase"]
...    Button_Voltar_Pagina=//button[@class="btn btn-wizard btn-secondary text-uppercase"]
...    h4_Texto_Pagina_Inicial=//h4[contains(text(),"Placa do Veículo - Não obrigatória")] 
...    Input_preco_Veiculo=//input[@id="Preco_ValorMinimo"]
...    Input_Imagem_Veiculo=//input[@id="Fotos_NovasFotos"]
...    select_Localizacao_Veiculo=//select[@id="Patio_PatioId"]

#.......
#...    Button_Cookie=//button[@id="cookie_stop"]

#...    Input_EmailLogin=//input[@placeholder="Email"] 
#...    Input_SenhaLogin=//input[@placeholder="Password"]
#...    Button_Logar=//span[contains(text(),"Login")]
#...    A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]


*** Keywords ***

Resetar a navegacão
    ${Result}    Run Keyword And Return Status     Page Should Contain Element  ${Incluir_Veiculo.h4_Texto_Pagina_Inicial}

    
    WHILE    ${Result}==$False     
        ${Result}    Run Keyword And Return Status     Page Should Contain Element  ${Incluir_Veiculo.h4_Texto_Pagina_Inicial}
        IF  ${Result}==$False             
            Run Keyword And Ignore Error       Scroll Element Into View           ${Incluir_Veiculo.Button_Voltar_Pagina}    
            Sleep                              1s
            Run Keyword And Ignore Error       Wait Until Element Is Visible      ${Incluir_Veiculo.Button_Voltar_Pagina}              10
            Run Keyword And Ignore Error       Click Element                      ${Incluir_Veiculo.Button_Voltar_Pagina}  
        END
    END



Navegando para a pagina de Incluir Veiculo
    Wait Until Element Is Visible      ${Incluir_Veiculo.A_Incluir_Veiculo}          10
    Sleep                              1s
    Click Element                      ${Incluir_Veiculo.A_Incluir_Veiculo}
    Sleep                              1s

E Adiciono a placa do Veiculo
    Wait Until Element Is Visible      ${Incluir_Veiculo.Input_Placa_Veiculo}         10
    Sleep                              1s
    Input Text                         ${Incluir_Veiculo.Input_Placa_Veiculo}      ${dados_cadastro_veiculo.Placa_Carro}

Navego para a Proxima Pagina
    Wait Until Element Is Visible      ${Incluir_Veiculo.Button_Proxima_Pagina}       10
    Sleep                              1s 
    Run Keyword And Ignore Error       Scroll Element Into View           ${Incluir_Veiculo.Button_Proxima_Pagina}
    Sleep                              1s
    Click Element                      ${Incluir_Veiculo.Button_Proxima_Pagina}

E Adiciono o Chassi do Veiculo
    Wait Until Element Is Visible      ${Incluir_Veiculo.Input_Chassi}             10
    Sleep                              1s
    Input Text                         ${Incluir_Veiculo.Input_Chassi}              ${dados_cadastro_veiculo.Chassi}

E Adiciono o numero do Motor do Veiculo
    Wait Until Element Is Visible      ${Incluir_Veiculo.Input_Numero_Motor}         10
    Sleep                              1s
    Input Text                         ${Incluir_Veiculo.Input_Numero_Motor}         ${dados_cadastro_veiculo.Numero_Motor}

E Adiciono Quilometragem
    Wait Until Element Is Visible      ${Incluir_Veiculo.Input_Quilometragem}         10
    Sleep                              1s
    Input Text                         ${Incluir_Veiculo.Input_Quilometragem}         ${dados_cadastro_veiculo.Quilometragem}

E Adiciono O Preco do Veiculo
    Wait Until Element Is Visible      ${Incluir_Veiculo.Input_preco_Veiculo}         10
    Sleep                              1s
    Input Text                         ${Incluir_Veiculo.Input_preco_Veiculo}         ${dados_cadastro_veiculo.Preco_Veiculo}

E Adiciono ${Quantidade} ou mais imagens
    FOR    ${counter}    IN RANGE    ${Quantidade}
        Run Keyword And Ignore Error       Wait Until Element Is Visible      ${Incluir_Veiculo.Input_Imagem_Veiculo}         5
        Choose File     ${Incluir_Veiculo.Input_Imagem_Veiculo}      C:/Users/Thallison/Downloads/photo_4924939089250200544_y.jpg        
    END

E adiciono Localizacão
    Click Element               ${Incluir_Veiculo.select_Localizacao_Veiculo}
    Press Keys                  ${Incluir_Veiculo.select_Localizacao_Veiculo}  ARROW_DOWN
    Press Keys                  ${Incluir_Veiculo.select_Localizacao_Veiculo}  ARROW_DOWN
    Press Keys                  ${Incluir_Veiculo.select_Localizacao_Veiculo}  ARROW_DOWN
    Press Keys                  ${Incluir_Veiculo.select_Localizacao_Veiculo}  ENTER 



