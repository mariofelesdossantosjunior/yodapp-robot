*** Settings ***

Resource   ../resources/base.resource

*** Test Cases ***

Deve realizar um click simples
    Start Session
    Get started
    Navigate to     Clique em Botões
    Go to item      Clique simples   Botão clique simples
    
    Click Text                     CLIQUE SIMPLES
    Wait Until Page Contains       Isso é um clique simples

    Close Session


Deve realizar um click longo
    [Tags]     long

    Start Session
    Get started
    Navigate to     Clique em Botões
    Go to item      Clique longo   Botão clique longo

    ${locator}   Set Variable    id=com.qaxperience.yodapp:id/long_click
    ${position}  Get Element Location    ${locator}

    Tap With Positions    ${1000}    ${${position}[x], ${position}[y]}
    Wait Until Page Contains       Isso é um clique longo


    Close Session