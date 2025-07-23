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
    Click Element   //div[@id="content"]/ul/li[19]/a
    Execute JavaScript   window.scrollTo(0, document.body.scrollHeight)
    Element Should Be Visible   //div[@id="menu"]

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[19]/a
    Execute JavaScript   window.scrollTo(0, document.body.scrollHeight)
    Element Should Be Visible   //div[@id="menu"]