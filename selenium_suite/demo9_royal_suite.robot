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
    Scroll Element Into View     xpath=//span[contains(text(),'26')]
    Click Element    xpath=//span[contains(text(),'26')]
    Input Text    xpath=//input[@data-placeholder='Year']   1995
    Click Element   xpath=//span[text()='Country/Region of residence']
    #Scroll Element Into View     xpath=//span[contains(text(),'India')]
    Click Element    xpath=//span[contains(text(),'India')]
    Input Text    xpath=//input[@data-placeholder='Email address']    kashyapindranee25@gmail.com
    Click Element   xpath=//span[text()='Select one security question']
    Scroll Element Into View     xpath=//span[contains(text(),' What elementary school did you go to? ')]
    Click Element    xpath=//span[contains(text(),' What elementary school did you go to? ')]
    Input Text    xpath=//input[@data-placeholder='Answer']   Saint Marys


    Sleep       5s