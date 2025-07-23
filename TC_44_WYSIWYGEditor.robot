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
    Click Element   //div[@id="content"]/ul/li[22]/a
    Click Element   //div[@id="content"]/div/ul/li[2]/a
    Element Should Contain      //div[@id="content"]/div/h3     iFrame
    Select Frame    id=mce_0_ifr
    Capture Page Screenshot   WYS-editos_screenshot.png

firefox Test
    ${title}    Get Title
    Click Element   //div[@id="content"]/ul/li[22]/a
    Click Element   //div[@id="content"]/div/ul/li[2]/a
    Element Should Contain      //div[@id="content"]/div/h3     iFrame
    Select Frame    id=mce_0_ifr
   # Click Button    //*[@class='tox-notification__dismiss tox-button tox-button--naked tox-button--icon']
    Capture Page Screenshot     WYS-editos_screenshot.png
