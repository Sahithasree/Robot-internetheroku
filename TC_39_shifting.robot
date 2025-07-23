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
    Click Element    //div[@id="content"]/ul/li[39]/a
    Click Link  //a[text()="Example 1: Menu Element"]
    Should Be Equal   ${shifting_url}   https://the-internet.herokuapp.com/shifting_content/menu?mode=random&pixel_shift=100

firefox Test
    ${title}    Get Title
     Click Element    //div[@id="content"]/ul/li[39]/a
    Click Link  //a[text()="Example 1: Menu Element"]
    Should Be Equal   ${shifting_url}   https://the-internet.herokuapp.com/shifting_content/menu?mode=random&pixel_shift=100
