*** Settings ***
Resource    resource.robot

*** Test Cases ***
Test on Chrome
    Open Browser    ${URL}    ${BROWSER1}
    Maximize Browser Window
    chrome Test
    Sleep  3sec
    Close Browser

Test on Firefox
    Open Browser    ${URL}    ${BROWSER2}
    Maximize Browser Window
    firefox Test
    Close Browser

*** Keywords ***
chrome Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[42]/a
    Page Should Contain Link   //a[text()="200"]
    Click Element     //a[text()="200"]
    Capture Element Screenshot      //div[@id="content"]/div/p[1]    statuscode_screenshot.png
firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[42]/a
    Page Should Contain Link   //a[text()="200"]
    Click Link      //a[text()="200"]
    Capture Element Screenshot     //div[@id="content"]/div/p[1]     statuscode_screenshot.png