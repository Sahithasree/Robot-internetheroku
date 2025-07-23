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
    Click Element   //div[@id="content"]/ul/li[16]/a
    Capture Element Screenshot  //div[@id="content"]/div[1]/p   exit_Screenshot.png
    ${handles}=     Get Window Names
    Log             ${handles}

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[16]/a
    Capture Element Screenshot  //div[@id="content"]/div[1]/p   exit_Screenshot.png
    ${handles}=     Get Window Names
    Log             ${handles}