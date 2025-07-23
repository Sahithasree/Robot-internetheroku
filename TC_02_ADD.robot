*** Settings ***
Resource    resource.robot

*** Test Cases ***
Test on Chrome
    Open Browser     ${url}   ${BROWSER1}
    Maximize Browser Window
    chrome Test
    Close Browser

Test on Firefox
    Open Browser      ${url}   ${BROWSER2}
    Maximize Browser Window
    firefox Test
    Close Browser
*** Keywords ***
chrome Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[2]/a
    Click Button    //button[@onclick="addElement()"]
    Capture Page Screenshot  add/remove_screenshot.png
    Click Button    //button[@onclick="deleteElement()"]

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[2]/a
    Click Button    //button[@onclick="addElement()"]
    Capture Page Screenshot  add/remove_screenshot.png
    Click Button    //button[@onclick="deleteElement()"]
