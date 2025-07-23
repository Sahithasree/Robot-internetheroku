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
    Click Element   //div[@id="content"]/ul/li[21]/a
    Input Text  //input[@name="username"]   ${username}
    Input Text  //input[@name="password"]   ${password}
    Click Button    //button[@type="submit"]
    Wait Until Element Is Visible   //div[@id="flash"]
    Capture Page Screenshot   Authentication_screenshot.png
    Click Element    //a[@class="button secondary radius"]/i

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[21]/a
    Input Text  //input[@name="username"]   ${username}
    Input Text  //input[@name="password"]   ${password}
    Click Button    //button[@type="submit"]
    Wait Until Element Is Visible   //div[@id="flash"]
    Capture Page Screenshot     Authentication_screenshot.png
    Click Element    //a[@class="button secondary radius"]/i


