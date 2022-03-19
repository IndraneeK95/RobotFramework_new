** Settings ***
Library     SeleniumLibrary


Test Teardown       Close Browser


*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://demo.openemr.io/b/openemr
    ${value}    Get Text        xpath=//body/form[@id='login_form']/div/div/p[1]
    Log To Console    ${value}
    ${palce_holder_value}   Get Element Attribute    id=authUser   attribute=placeholder
    Log To Console    ${palce_holder_value}