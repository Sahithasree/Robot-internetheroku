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
    Click Element    //div[@id="content"]/ul/li[34]/a
    Capture Page Screenshot     nested-frames_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[34]/a
    Capture Page Screenshot    nested-frames_screenshot.png
