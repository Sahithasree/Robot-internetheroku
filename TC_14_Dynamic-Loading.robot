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
    set selenium implicit_wait   4sec
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[14]/a
    Element Text Should Be      //div[@id="content"]/div/h3      Dynamically Loaded Page Elements
    Click Element   //div[@id="content"]/div/a[1]
    Click Button    //div[@id="start"]/button
    Get Text  //div[@id="finish"]/h4

firefox Test
    set selenium implicit_wait   4sec
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[14]/a
    Element Text Should Be      //div[@id="content"]/div/h3      Dynamically Loaded Page Elements
    Click Element   //div[@id="content"]/div/a[1]
    Click Button    //div[@id="start"]/button
    Get Text  //div[@id="finish"]/h4