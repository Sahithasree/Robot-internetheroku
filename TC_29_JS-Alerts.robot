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
    Click Element    //div[@id="content"]/ul/li[29]/a
    Click Button    //button[@onclick="jsAlert()"]
    Sleep   5sec
    Handle Alert    Accept
    Page Should Contain    You successfully clicked an alert
    Capture Element Screenshot      //p[text()="You successfully clicked an alert"]     jsalert_screenshot.png
    Log    "You successfully clicked an alert"
firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[29]/a
    Click Button    //button[@onclick="jsAlert()"]
    Sleep   5sec
    Handle Alert    Accept
    Page Should Contain    You successfully clicked an alert
    Capture Element Screenshot      //p[text()="You successfully clicked an alert"]     jsalert_screenshot.png
    Log    "You successfully clicked an alert"
