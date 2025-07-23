** Settings ***
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
    Click Element    //div[@id="content"]/ul/li[32]/a
    Element Should Be Visible       //div[@id="content"]/div/h3
    Execute JavaScript   window.scrollTo(0, document.body.scrollHeight)

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[32]/a
    Element Should Be Visible       //div[@id="content"]/div/h3
    Execute JavaScript   window.scrollTo(0, document.body.scrollHeight)

