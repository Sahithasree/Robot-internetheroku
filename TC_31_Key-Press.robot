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
    Click Element    //div[@id="content"]/ul/li[31]/a
    Press Keys    //input[@id="target"]    S
    sleep   3sec
    Wait Until Element Is Visible   //p[@id="result"]   5s
    Capture Element Screenshot      //p[@id="result"]      key_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[31]/a
    Press Keys    //input[@id="target"]    F
    sleep   3sec
    Wait Until Element Is Visible   //p[@id="result"]   5s
    Capture Element Screenshot      //p[@id="result"]      keys_screenshot.png