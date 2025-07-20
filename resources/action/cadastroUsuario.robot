*** Settings ***
Library     SeleniumLibrary
Resource   ../pages/Pagelogin.robot
Resource   ../pages/PageCadastrarUsuario.robot

*** Variables ***
${SENHA_USUARIO}            teste@123

*** Keywords ***   
Dado que estou na tela de cadastro
    Click Element    ${LINK_CADASTRAR_USUARIO}
    Wait Until Element Is Visible  ${TEXTO_CADASTRO}    
E preencho os campos necessario para o cadastro
    [Arguments]     ${NOME}   ${EMAIL}    #${SENHA}
    Click Element   ${TXT_NOME}
    Input Text    ${TXT_NOME}  ${NOME}
    Click Element   ${TXT_EMAIL}
    Input Text    ${TXT_EMAIL}    ${EMAIL}
    Input Password    ${TXT_PASSWORD}    ${SENHA_USUARIO}
    Select Checkbox     ${CHECK_ADMIN}   
    Checkbox Should Be Selected    ${CHECK_ADMIN}
Quando eu clicar em cadastrar
     Click Element    ${BTN_CADASTRAR}        
Entao me mostre a tela inicial do sistema
    Wait Until Element Is Visible   ${TXT_BEM_VINDO}   
    
   
    
    
    




