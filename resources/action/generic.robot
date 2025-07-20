*** Settings ***
Library     SeleniumLibrary
Resource   ../pages/Pagelogin.robot
Resource   ../pages/PageCadastrarUsuario.robot
Resource   ../action/cadastroUsuario.robot
*** Variables ***


*** Keywords ***   
Dado que estou logado com o email 
   [Arguments]  ${EMAIL}
    Click Element   ${TXT_EMAIL}
    Log To Console    Clica no campo email
    Input Text    ${TXT_EMAIL}    ${EMAIL}
    Log To Console    Digitando o campo ${EMAIL}
    Input Password    ${TXT_PASSWORD}   ${SENHA_USUARIO}
    Log To Console    digitando o campo senha que vem do arquivo cadastroUsuario
    Click Element    ${BTN_ENTRAR}
    Wait Until Element Is Visible    ${TXT_BEM_VINDO}    4s
