*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Test Cases ***

Deve realizar um click simples

    Open Application    http://localhost:4723    
    ...    platformName=Android
    ...    deviceName=emulator-5554
    ...    automationName=UiAutomator2
    ...    app=app/yodapp-beta.apk
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true

    Wait Until Page Contains   ${START}
    Click Text   ${START}

    ${hamburguer}     Set Variable    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    
    Wait Until Element Is Visible  ${hamburguer} 
    Click Element                  ${hamburguer}
    
    
    ${menu_item}    Set Variable    //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
    
    Wait Until Element Is Visible  ${menu_item}

    Click Element                  ${menu_item}

    Sleep   5

    Close Application