** Settings ***
Library     SeleniumLibrary


Test Teardown       Close Browser


*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://phptravels.net/
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//input[@role='searchbox']    Chennai
    Sleep    1s
    Click Element    xpath=//li[text()='Chennai,India']
    Execute Javascript      document.querySelector("#checkin").value='25-03-2022'
    Execute Javascript      document.querySelector("#checkout").value='28-03-2022'
    Click Element       xpath=//p[contains(text(),'Travellers')]
    Click Element    xpath=//i[@class='la la-plus']
    Click Element    xpath=(//i[@class='la la-plus'])[3]
    Click Element    xpath=(//i[@class='la la-plus'])[3]
    Select From List By Label    id=nationality     India
    Click Element    id=submit
    ${inner_text}     Get Text    xpath=//div[@class='breadcrumb-content']
    Log To Console    ${inner_text}

    Element Should Contain    xpath=//div[@class='breadcrumb-content']    Chennai
    Element Should Contain    xpath=//div[@class='breadcrumb-content']    25-03-2022
    Element Should Contain    xpath=//div[@class='breadcrumb-content']    28-03-2022
