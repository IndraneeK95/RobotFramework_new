*** Settings ***

Library     SeleniumLibrary

* Test Cases *

TC1
    Open Browser    url=https://www.goto.com/meeting/      browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    id=truste-consent-button
    Click Element    link=Get a Demo
    Input Text    xpath=//input[@data-sc-field-name='firstName']    Indranee
    Input Text    xpath=//input[@data-sc-field-name='lastName']    Kashyap
    Input Text    xpath=//input[@data-sc-field-name='email']    kashyapindranee25@gmail.com
    Select From List By Label    xpath=//select[@data-sc-field-name='employees']    10 - 99
    Click Element    xpath=//input[@type='submit']
    [Teardown]      Close Browser