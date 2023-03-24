*** Settings ***
Library    SeleniumLibrary

### Data ###
Resource  data/geral.robot
Resource  data/login.robot
Resource  data/cadastro_veiculo.robot
### Shared ###

Resource    shared/setup_teardown.robot

### Pages ###
Resource  pages/login_page.robot
Resource  pages/estoque_page.robot
Resource  pages/cadastro_veiculo.robot
#OutrasPaginas2