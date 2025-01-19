*** Settings ***

Resource   ../resources/base.resource

*** Test Cases ***

Deve logar com sucesso

    Start Session
    Get started
    Navigate to     Formulários
    Go to item      Login   Olá Padawan, vamos testar o login?
        
    Input Text      id=com.qaxperience.yodapp:id/etEmail        yoda@qax.com
    Input Password  id=com.qaxperience.yodapp:id/etPassword     jedi
    Click Element   id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains     Boas vindas, logado você está.

    Sleep     3

    Close Session