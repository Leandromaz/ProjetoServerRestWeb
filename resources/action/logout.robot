*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource   ../pages/pagelogin.robot
Resource   ../pages/pageCadastrarUsuario.robot
Resource   ../pages/pageCadastrarProduto.robot

*** Keywords ***  

Quando eu clicar no botão de Logout
    Click Element    ${BTN_LOGOUT}

Então me mostre a tela inicial de login 
    Wait Until Element Is Visible    ${IMG_SERVEREST}