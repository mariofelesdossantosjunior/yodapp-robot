*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Deve realizar um click simples

    Open Application    http://localhost:4723    
    ...    platformName=Android
    ...    deviceName=emulator-5554
    ...    automationName=UiAutomator2
    ...    app=app/yodapp-beta.apk
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true

    Wait Until Page Contains   Yodapp
    Click Text   QAX
    Sleep   5
    Close Application