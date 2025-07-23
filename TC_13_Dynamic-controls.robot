
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
    Click Element   //div[@id="content"]/ul/li[13]/a
    Element Text Should Be      //div[@id="content"]/div[1]/h4[2]   Remove/add
    Select Checkbox     //input[@type="checkbox"]
    Click Button    //button[@onclick="swapCheckbox()"]
    Wait Until Element Is Visible    //p[@id="message"]
    Click Button    //button[@onclick="swapInput()"]
    Wait Until Element Is Visible   //p[@id="message"]
    Capture Page Screenshot     D-Controls_Screenshot.png
    Click Button    //button[@onclick="swapCheckbox()"]
    Wait Until Element Is Visible   //p[@id="message"]
    Input Text      //input[@type="text"]   Dynamic Controls
    Click Button    //button[@onclick="swapInput()"]
    Capture Page Screenshot
firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[13]/a
    Element Text Should Be      //div[@id="content"]/div[1]/h4[2]   Remove/add
    Select Checkbox     //input[@type="checkbox"]
    Click Button    //button[@onclick="swapCheckbox()"]
    Wait Until Element Is Visible    //p[@id="message"]
    Click Button    //button[@onclick="swapInput()"]
    Wait Until Element Is Visible   //p[@id="message"]
    Capture Page Screenshot     D-Controls_Screenshot.png
    Click Button    //button[@onclick="swapCheckbox()"]
    Wait Until Element Is Visible   //p[@id="message"]
    Input Text      //input[@type="text"]   Dynamic Controls
    Click Button    //button[@onclick="swapInput()"]
    Capture Page Screenshot