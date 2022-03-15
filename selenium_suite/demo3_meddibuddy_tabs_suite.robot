*** Settings ***

Library     SeleniumLibrary

* Test Cases *

TC1
    Open Browser         browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To       url=https://www.medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window       MediBuddy LaunchPad
    Input Text    id=getInTouchName    Indranee
    Input Text        id=getInTouchEmail        kashyapindranee25@gmail.com
    Input Text    id=getIntouchMobile    6000700023
