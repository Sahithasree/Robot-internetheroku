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
    Click Element   //div[@id="content"]/ul/li[6]/a
    Select Checkbox    //form[@id="checkboxes"]/input[1]
    Unselect Checkbox    //form[@id="checkboxes"]/input[2]
    Capture Page Screenshot     checkbox_screenshot.png
firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[6]/a
    Select Checkbox     //form[@id="checkboxes"]/input[1]
    Unselect Checkbox    //form[@id="checkboxes"]/input[2]
    Capture Page Screenshot     checkbox_screenshot.png