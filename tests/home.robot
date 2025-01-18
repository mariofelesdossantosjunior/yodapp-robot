*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Deve abrir a tela principal

    Open Application    http://localhost:4723    
    ...    platformName=Android
    ...    deviceName=emulator-5554
    ...    automationName=UiAutomator2
    ...    app=app/yodapp-beta.apk
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true

    Wait Until Page Contains   Yodapp
    Wait Until Page Contains   Mobile Training
    Wait Until Page Contains   by Papito
    
    Close Application