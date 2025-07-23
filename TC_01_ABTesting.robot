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
        Click Link      //a[@href="/abtest"]
        Element Should Be Visible   //div[@id="content"]/div/h3
        Click Element       //a[@target="_blank"]
        sleep   5sec
        Switch Window       Home | Elemental Selenium
        Element Should Be Visible   //div[@id="__docusaurus_skipToContent_fallback"]/header/div/h1
        Capture Page Screenshot     A/B-selenium_screenshot.png
        Click Element   //button[@class="button button--lg button--primary"]
firefox Test
        ${title}    Get Title
        Click Element       //a[@href="/abtest"]
        Element Should Be Visible   //div[@id="content"]/div/h3
        Click Element   //a[@target="_blank"]
        Switch Window       Home | Elemental Selenium
        sleep   5sec
        Capture Page Screenshot     A/B-selenium_screenshot.png


