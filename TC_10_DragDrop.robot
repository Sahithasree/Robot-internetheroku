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
    Click Element   //div[@id="content"]/ul/li[10]/a
    Drag And Drop   ${Source_element}   ${Target_element}
    Log to console     "Element got dropped"
    Sleep   2sec
    Capture Page Screenshot      dropped_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[10]/a
    Drag And Drop    ${Source_element}  ${Target_element}
    Log to console     "Element got dropped"


