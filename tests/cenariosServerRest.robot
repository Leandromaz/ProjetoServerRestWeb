*** Settings ***
Resource            ../settings/settings.robot
Resource    ../resources/action/generic.robot
Resource    ../resources/action/cadastroProduto.robot
Resource    ../resources/action/Logout.robot


Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
# robot -d ./Logs -i cadastro_usuario tests 
CT01: Cadastrar novo usuario
    [tags]    cadastro_usuario
    Dado que estou na tela de cadastro
    E preencho os campos necessario para o cadastro    leandro02    leandro37@gmail.com
    Quando eu clicar em cadastrar
    Entao me mostre a tela inicial do sistema

# robot -d ./Logs -i cadastro_produto tests 
CT02: Cadastrar produto
    [tags]    cadastro_produto
    Dado que estou logado com o email     leandro54@gmail.com
    E clico no menu de cadastrar produto
    E preencho os campos necessarios para o cadastro de produto    playstation 38    3000    playstation    480
    Quando eu clicar em Cadastrar produto
    Entao me mostre a tela de listar Produtos 

# robot -d ./Logs -i logout tests
CT03: Logout do sistema
    [Tags]    logout
     Dado que estou logado com o email     leandro54@gmail.com
     Quando eu clicar no botão de Logout
     Então me mostre a tela inicial de login
    
    
    
    
    
    
    
