** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser


*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    xpath=//a[normalize-space()='Create an account']
    Input Text    xpath=//input[@data-placeholder='First name/Given name']    Indranee
    Input Text    xpath=//input[@data-placeholder='Last name/Surname']    Kashyap
    Click Element    xpath=//span[text()='Month']
    Click Element    xpath=//span[contains(text(),'April')]
    Click Element    xpath=//span[text()='Day']
    Click Element    xpath=//span[contains(text(),'4')]

    Sleep       5s