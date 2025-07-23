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
    Click Element    //div[@id="content"]/ul/li[30]/a
    Capture element Screenshot    //body[@onload="loadError()"]/p[text()]    jsonload_Screenshot.png

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[30]/a
    Capture Element Screenshot   //body[@onload="loadError()"]/p[text()]       jsonload_Screenshot.png