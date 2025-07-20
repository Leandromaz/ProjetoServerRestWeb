*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}         https://front.serverest.dev/login

*** Keywords ***
#### Setup em Teardown
Abrir navegador
    Open BROWSER   ${URL}      ${BROWSER}

Fechar navegador
    Capture Page Screenshot
    Close Browser
    