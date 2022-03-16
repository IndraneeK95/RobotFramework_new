** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser


*** Test Cases ***
TC1
    Open Browser    browser=headlesschrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://google.com
    ${title}  Get Title 
    Log To Console    ${title}