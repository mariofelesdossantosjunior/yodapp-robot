*** Settings ***

Resource   ../resources/base.resource

*** Test Cases ***

Deve marcar as techs que usam Appium
    Start Session
    Get started
    Navigate to     Check e Radio
    Go to item      Checkbox   Marque as techs que usam Appium
    
    Click Element      xpath=//android.widget.CheckBox[contains(@text, "Ruby")]

    Close Session