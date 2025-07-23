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
    Click Element    //div[@id="content"]/ul/li[40]/a
    Element Should Be Visible   //div[@id="content"]/div/h3     Slow Resources
    Capture Page Screenshot     Slow_resource_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[40]/a
    Element Should Be Visible   //div[@id="content"]/div/h3     Slow Resources
    Capture Page Screenshot     Slow_resource_screenshot.png