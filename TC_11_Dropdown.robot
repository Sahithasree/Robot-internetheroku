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
    Click Element   //div[@id="content"]/ul/li[11]/a
    Click Element   //select[@id="dropdown"]
    Select From List By Index   //select[@id="dropdown"]    2
    Capture Page Screenshot     dropdown_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[11]/a
    Click Element   //select[@id="dropdown"]
    Select From List By Index   //select[@id="dropdown"]    2
    Capture Page Screenshot     dropdown_screenshot.png

