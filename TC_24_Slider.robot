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
    Click Element   //div[@id="content"]/ul/li[24]/a
    Drag And Drop By Offset    ${SLIDER}    ${OFFSET_1}    0
    Log   " the slider moved horizontal"
firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[24]/a
    Drag And Drop By Offset    ${SLIDER}    ${OFFSET_1}    0
    Log   " the slider moved horizontal"