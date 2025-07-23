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
    Click Element    //div[@id="content"]/ul/li[35]/a
    Wait Until Element Is Visible   //div[@id="flash"]
    Capture Element Screenshot     //div[@id="flash"]   invalidmsg_screensot.png
    Click Element   //a[text()="Click here"]
    Page Should Contain   Action successful
    Log     Action is successful

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[35]/a
    Wait Until Element Is Visible   //div[@id="flash"]
    Capture Element Screenshot     //div[@id="flash"]   invalidmsg_screensot.png
    Click Element   //a[text()="Click here"]
    Page Should Contain   Action successful
    Log  Action is successful