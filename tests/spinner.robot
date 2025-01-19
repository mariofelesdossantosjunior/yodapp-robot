*** Settings ***

Resource   ../resources/base.resource

*** Test Cases ***

Deve escolher o nivel Jedi

    Start Session
    Get started
    Navigate to     Formulários
    Go to item      Cadastro   Crie sua conta.
        
    # Input Text      id=com.qaxperience.yodapp:id/etEmail        yoda@qax.com
    # Input Password  id=com.qaxperience.yodapp:id/etPassword     jedi

    Select Level   Jedi

    Sleep     3

    Close Session


*** Keywords ***
Select Level
    [Arguments]    ${level}
    Click Element                   id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible   class=android.widget.ListView 
    Click Text                      ${level}