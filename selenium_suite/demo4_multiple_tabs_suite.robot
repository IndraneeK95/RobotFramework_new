*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser         browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To       url=https://www.db4free.net/
    Click Element    Link=phpMyAdmin »
    Switch Window     NEW
    Input Text    id=input_username    admin
    Input Password    id=input_password    admin123
    Click Button    id=input_go
    Element Text Should Be      //div[contains(text(), 'information may be available')]        Error 1045: Access denied for user.
