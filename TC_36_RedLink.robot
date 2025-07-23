*** Settings ***
Resource    resource.robot

*** Test Cases ***
Test on Chrome
    Open Browser    ${URL}    ${BROWSER1}
    Maximize Browser Window
    chrome Test
    sleep   2sec
    Close Browser

Test on Firefox
    Open Browser    ${URL}    ${BROWSER2}
    Maximize Browser Window
    firefox Test
    Close Browser

*** Keywords ***
chrome Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[36]/a
    Click Element  //a[@id="redirect"]
    Page Should Contain Link   //a[text()="404"]
    Click Link      //a[text()="404"]

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[36]/a
    Click Element  //a[@id="redirect"]
    Page Should Contain Link   //a[text()="404"]
    Click Link      //a[text()="404"]
