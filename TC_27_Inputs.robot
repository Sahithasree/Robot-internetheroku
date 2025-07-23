*** Settings ***
Resource    resource.robot
*** Variables ***
${initial_value}    2326
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
    Click Element   //div[@id="content"]/ul/li[27]/a
    Input Text  //div[@id="content"]/div/div/div/input     ${initial_value}
    Capture Page Screenshot     Value_screenshot.png
    Log   "Value is Entered in given input space"

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[27]/a
    Input Text  //div[@id="content"]/div/div/div/input       ${initial_value}
    Capture Page Screenshot     Value_screenshot.png
    Log   "Value is Entered in given input space"

