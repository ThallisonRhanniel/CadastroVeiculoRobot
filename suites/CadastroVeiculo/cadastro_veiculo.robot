*** Settings ***
Resource  ../../resource/main.robot
#executa antes de cada teste
Test Setup  Acessar site e fazer Login
#executa ao finalizar os testes
Test Teardown  Fechar navegador
*** Test Cases ***

TC01 - Navegando para Pagina de Incluir Veiculos
    Navegando para a pagina de Incluir Veiculo   
    Resetar a navegacão    
    E Adiciono a placa do Veiculo
    Navego para a Proxima Pagina
    E Adiciono o Chassi do Veiculo
    E Adiciono o numero do Motor do Veiculo
    E Adiciono Quilometragem
    Navego para a Proxima Pagina
    Navego para a Proxima Pagina
    Navego para a Proxima Pagina
    E Adiciono O Preco do Veiculo
    Navego para a Proxima Pagina
    E Adiciono 4 ou mais imagens
    E adiciono Localizacão
