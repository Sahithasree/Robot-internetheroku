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
    Click Element   //div[@id="content"]/ul/li[28]/a
    Mouse over  //a[text()="Enabled"]
    Sleep   5 sec
    Mouse over  //a[text()="Downloads"]
    Sleep   10 sec
    Click Element   //a[text()="PDF"]
    Log     Downloaded file: ${FILENAME}

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[28]/a
    Mouse over  //a[text()="Enabled"]
    Sleep   5 sec
    Mouse over  //a[text()="Downloads"]
    Sleep   10 sec
    Click Element   //a[text()="PDF"]
    Log     Downloaded file: ${FILENAME}


