*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Test Cases ***

Deve realizar um click simples
    Start Session
    Get started
    Navigate to     Clique em Botões
    Go to item      Clique simples   Botão clique simples
    
    Click Text                     CLIQUE SIMPLES
    Wait Until Page Contains       Isso é um clique simples

    Close Session

*** Keywords ***
Start Session
    Open Application    http://localhost:4723    
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 automationName=UiAutomator2
    ...                 app=app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    
Get started
    Wait Until Page Contains       ${START}
    Click Text                     ${START}

Navigate to
    [Arguments]    ${item_text}
    ${hamburguer}     Set Variable    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    
    Wait Until Element Is Visible  ${hamburguer} 
    Click Element                  ${hamburguer}
    
 
    ${menu_item}    Set Variable    //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
    
    Wait Until Element Is Visible  ${menu_item}
    Click Element                  ${menu_item}

Go to item
    [Arguments]    ${item}     ${checkpoint}
    Wait Until Page Contains       ${item}
    Click Text                     ${item}
    Wait Until Page Contains       ${checkpoint}

Close Session
    Close Application