*** Settings ***

Library         OperatingSystem
Library         SeleniumLibrary

*** Test Cases ***

TC1
    #Append To Environment Variable  Path   ${EXECDIR}${/}driver
    Log To Console    ${EXECDIR}${/}driver
    Open Browser       url=https://opensource-demo.orangehrmlive.com     browser=chrome  executable_path=${EXECDIR}${/}driver${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id=txtUsername    Admin
    Input Password      id=password    admin123
    Click Element    id=btnlogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Click Element    link=logout

TC2
    Log To Console    ${EXECDIR}${/}driver
    Open Browser       url=https://opensource-demo.orangehrmlive.com     browser=chrome  executable_path=${EXECDIR}${/}driver${/}chromedriver
    Set Selenium Implicit Wait    20s
    Maximize Browser Window
    Input Text    id=txtUsername  admin123
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Click Element    link=My Info
    Click Element    Link=Emergency Contacts
    Click Element    class id=btnAddContact
    Input Text    xpath=//*[@id-'emgcontacts_name']   sat
    Input Text    id=emgcontacts_relationship    Brother
    Input Text    id=emgcontacts_homePage   78988
    Click Button   id=btnSaveEContact