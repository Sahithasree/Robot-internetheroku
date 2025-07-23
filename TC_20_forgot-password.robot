*** Settings ***
Resource    resource.robot

*** Test Cases ***
Test on Chrome
    Open Browser    ${URL}    ${BROWSER1}
    Maximize Browser Window
    chrome Test
    Close Browser

Test on Firefox
    Open Browser    ${URL}    ${BROWSER2}
    Maximize Browser Window
    firefox Test
    Close Browser
*** Keywords ***
chrome Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[20]/a
    Input Text  //input[@name="email"]  ${Forget_password}
    Click Button    //button[@id="form_submit"]
    Log to console  "button got clicked"
    Capture Element Screenshot  //h1[text()="Internal Server Error"]   error_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[20]/a
    Input Text  //input[@name="email"]  ${Forget_password}
    Click Button    //button[@id="form_submit"]
    Log to console  "button got clicked"
    Capture Element Screenshot  //h1[text()="Internal Server Error"]   error_screenshot.png