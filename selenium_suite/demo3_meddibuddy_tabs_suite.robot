*** Settings ***

Library     SeleniumLibrary

* Test Cases *

TC1
    Open Browser         browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To       url=https://www.medibuddy.in/
    Click Button   xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window       MediBuddy LaunchPad
    Input Text    id=getInTouchName    Indranee
    Input Text     id=getInTouchEmail        kashyapindranee25@gmail.com
    Input Text    id=getInTouchMobile    6000700
    Input Text    id=getInTouchDesignation     employee
    Input Text    id=getInTouchEmpCount     30
    #Click Button    xpath=//button[text()='Get In Touch']
    Click Button    xpath=//button[text()='Get in Touch']
    Element Text Should Be      //div[contains(text(), 'digits')]          Mobile Number should be 10 digits

    Close Window
