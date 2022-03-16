** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser


*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    xpath=//a[normalize-space()='Create an account']
    Input Text    xpath=//input[@data-placeholder='First name/Given name']    Indranee
    Input Text    xpath=//input[@data-placeholder='Last name/Surname']    Kashyap
    Click Element    xpath=//span[text()='Month']
    Click Element    xpath=//span[contains(text(),'April')]
    Click Element    xpath=//span[text()='Day']
    Click Element    xpath=//span[contains(text(),'4')]
    Input Text    xpath=//input[@data-placeholder='Year']   1995
    Click Element   xpath=//span[text()='Country/Region of residence']
    Click Element    xpath=//span[contains(text(),'India')]

    Sleep       5s