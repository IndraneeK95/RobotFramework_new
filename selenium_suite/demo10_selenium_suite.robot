** Settings ***
Library     SeleniumLibrary

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
