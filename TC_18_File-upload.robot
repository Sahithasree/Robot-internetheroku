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
    Click Element   //div[@id="content"]/ul/li[18]/a
    Element Should Be Visible   //div[@id="content"]/div[1]/h3
    Choose File   ${upload_btn}     ${CURDIR}${/}${fileto_upload}
    Click Button    //input[@id="file-submit"]
    Element Should Be Visible   //div[@id="uploaded-files"]
    Capture Page Screenshot     fileupload_screenshot.png
    Log to console   "File is uploaded"

firefox Test
    ${title}    Get Title
    Click Element    //div[@id="content"]/ul/li[18]/a
    Element Should Be Visible   //div[@id="content"]/div[1]/h3
    Choose File   ${upload_btn}     ${CURDIR}${/}${fileto_upload}
    Click Button    //input[@id="file-submit"]
    Element Should Be Visible   //div[@id="uploaded-files"]
    Capture Page Screenshot     fileupload_screenshot.png
    Log to console   "File is uploaded"