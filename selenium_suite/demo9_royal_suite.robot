** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    xpath=//a[normalize-space()='Create an account']
    Input Text    id=mat-input-3    Indranee
    Input Text    id=mat-input-4    Kashyap
