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
    Click Element    //div[@id="content"]/ul/li[33]/a
    Element Should Be Visible   //div[@id="content"]
    Click Element   //a[@href="/windows/new"]
    Switch Window   New Window
    Capture Element Screenshot  //h3[text()="New Window"]   New Window_Screenshot.png


firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[33]/a
    Element Should Be Visible   //div[@id="content"]
    Click Element   //a[@href="/windows/new"]
    sleep   5sec
    Switch Window   New Window
    Capture Element Screenshot  //h3[text()="New Window"]   New Window_Screenshot.png
