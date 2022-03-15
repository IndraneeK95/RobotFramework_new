** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.redbus.in/
    Click Element    id=i-icon-profile

    Click Element    id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id=mobileNoInp    888777
    Unselect Frame