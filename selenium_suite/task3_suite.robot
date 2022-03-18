** Settings ***
Library     SeleniumLibrary
Library     AutoRecorder

#Test Teardown       Close Browser


*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    3s
    Go To    url=https://phptravels.net/
    Click Element    xpath=//span[text()=' flights']
    Select From List By Label    id=flight_type     Business
    Click Element    xpath=//div[@class='autocomplete-wrapper _1 row_1']
    Input Text       xpath=//input[@id='autocomplete']      Los
    Click Element    xpath=//div[contains(text(),'Los Angeles, United States')]
    Click Element    xpath=//div[@class='autocomplete-wrapper _1 row_2']
    Input Text       xpath=//input[@id='autocomplete2']     Dal
    Click Element    xpath=//div[contains(text(),'Dallas, United States')]
    Click Element    xpath=//div[@class='row g-0']//div[1]//div[1]//div[1]
    Input Text    id=departure    21-12-2021

    Click Element    xpath=//a[@class='dropdown-toggle dropdown-btn waves-effect']

    Click Element    xpath=//div[@class='dropdown-item adult_qty']//i[@class='la la-plus']
    Click Element    xpath=//div[@class='dropdown-item adult_qty']//i[@class='la la-plus']

    Click Element    xpath=//div[@class='dropdown-item child_qty']//i[@class='la la-plus']
    Click Element    xpath=//div[@class='dropdown-item child_qty']//i[@class='la la-plus']
    Click Element    id=flights-search


