** Settings ***
Library     SeleniumLibrary
Library     AutoRecorder

Test Teardown       Close Browser


*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://www.google.com
    ${title}  Get Title 
    Log To Console    ${title}
    ${url}      Get Location
    Log To Console    ${url}

    Press Keys      Name=q      Hello World
    Press Keys      None     ARROW_DOWN
    Press Keys      None     ARROW_DOWN
    Press Keys      None     ARROW_DOWN
    Press Keys      None     ENTER

TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://www.myntra.com
    Mouse Over    xpath=//span[text()='Profile']
    Click Element   xpath=//a[text()='login / Signup']


TC3
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    3s
    Go To    url=https://nasscom.in/nasscom-membership
    Mouse Over    xpath=//a[text()='Membership']
    Click Element    xpath=//a[text()='Members Listing']
    Wait Until Page Contains Element    xpath=//input[@id='edit-title']
    ${title}    Get Title
    Log To Console    ${title}
    Should Be Equal     ${title}  Members Listing | NASSCOM

