*** Settings ***

Library   AppiumLibrary


*** Variables ***
${START}    QAX

*** Keywords ***
Start Session
    Open Application    http://localhost:4723    
    ...                 platformName=Android
    ...                 deviceName=127.0.0.1:6555
    ...                 automationName=UiAutomator2
    ...                 app=app/yodapp-beta.apk
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