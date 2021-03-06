** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element   xpath=//img[@alt='Go']
    ${alert_text}       Handle Alert        action=ACCEPT       timeout=50s
    Log To Console    ${alert_text}
    Should Be Equal    ${alert_text}        Customer ID${SPACE}${SPACE}cannot be left blank.
TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    id=edit-submitted-contact-person-for-nasscom-email-id-cp
    ${alert_text2}       Handle Alert        action=ACCEPT       timeout=50s
    Log To Console    ${alert_text2}
    Should Be Equal    ${alert_text2}       Please enter amount in digit and greater than zero.