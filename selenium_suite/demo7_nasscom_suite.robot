*** Comments ***
1. Launch browser
2. Maximize and set the implicit wait
3. Naviagte https://nasscom.in/nasscom-membership
4. Click Institutional Members
5. Check Telecom Services
6. Check Trade & Investment
7. Enter Name of Organization as "LT"
8. Enter Address Line 1  as "#20 Chennai"
9. Select State as Tamil Nadu
10. Select City as Chennai
11. Click Mode of payment offline
12. Check code of conduct detail
13. Click on Preview

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element     xpath=//label[@for='edit-field-membership-type-und-1203']
    Select Checkbox     id=edit-field-business-focus-inst-und-970
    Select Checkbox     id=edit-field-business-focus-inst-und-968
    Input Text    xpath=//input[@id='edit-title']   LT
    Input Text    xpath=//textarea[@id='edit-field-address-line-1-und-0-value']   20 Chennai
    Select From List By Label      xpath=//select[@id='edit-field-state-member-und']    Tamil Nadu
    Select From List By Label      xpath=//select[@id='edit-field-city-membership-und']     Chennai
    Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    ${EXECDIR}${/}test.pdf
    Click Element   id=edit-field-memorandum-article-of-asso-und-0-upload-button--2
    Click Element    xpath=//label[@for='edit-field-mode-of-payment-und-0']
    Select Checkbox     xpath=//input[@id='edit-field-code-of-conduct-und-0']
    Click Element       xpath=//input[@id='edit-preview']


