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
    Click Element   //div[@id="content"]/ul/li[15]/a
    Wait Until Element Is Visible   //*[@class='modal']
    ${handles}=     Get Window Names
    Log to console            ${handles}
    Capture Page Screenshot     EntryAD_Screenshot.png
firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[15]/a
    Wait Until Element Is Visible   //*[@class='modal']
    ${handles}=     Get Window Names
    Log to console            ${handles}
    Click Element   //div[@id="modal"]/div[2]/div[3]/p