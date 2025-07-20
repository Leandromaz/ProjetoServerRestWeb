*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource   ../pages/Pagelogin.robot
Resource   ../pages/PageCadastrarUsuario.robot
Resource   ../pages/PageCadastrarProduto.robot

*** Keywords ***  

E clico no menu de cadastrar produto   
     Click Element    ${LINK_CADASTRAR_PRODUTO} 
E preencho os campos necessarios para o cadastro de produto
    [Arguments]    ${NOME_PRODUTO}    ${PRECO}     ${DESCRICAO}    ${QUANTIDADE}
    Click Element    ${TXT_NOME}
    Input Text   ${TXT_NOME}   ${NOME_PRODUTO}
    Click Element    ${TXT_PREÇO}
    Input Text    ${TXT_PREÇO}    ${PRECO}
    Click Element    ${TXT_DESCRICAO}
    Input Text    ${TXT_DESCRICAO}  ${DESCRICAO} 
    Click Element    ${TXT_QUANTIDADE}
    Input Text    ${TXT_QUANTIDADE}  ${QUANTIDADE}  
    ${file_path} =    Join Path    ${EXECDIR}/imagens/playstation5.png
    Choose File    ${UPLOAD_IMG}    ${file_path}
    
    
Quando eu clicar em Cadastrar produto
        Click Element   ${BTN_CADASTRAR} 
        Sleep    2

Entao me mostre a tela de listar Produtos
        Wait Until Element Is Visible   ${TXT_LISTA_PRODUTO}


