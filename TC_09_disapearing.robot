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
    Click Element   //div[@id="content"]/ul/li[9]/a
    Capture Page Screenshot
    Click Element   //div[@id="content"]/div/ul/li[1]/a
    Click Element   //div[@id="content"]/ul/li[9]/a
    Click Element   //div[@id="content"]/div/ul/li[2]/a
    Capture Element Screenshot  //*[text()="Not Found"]     notfound_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[9]/a
    Capture Page Screenshot
    Click Element   //div[@id="content"]/div/ul/li[1]/a
    Click Element   //div[@id="content"]/ul/li[9]/a
    Click Element   //div[@id="content"]/div/ul/li[2]/a
    Capture Element Screenshot  //*[text()="Not Found"]     notfound_screenshot.png
