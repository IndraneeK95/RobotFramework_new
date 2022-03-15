** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default
    Input Text        id=authUser       admin
    Input Password    id=clearPass   pass
    Select From List By Label   //select[@name='languageChoice']    English (Indian)
    Click Button    xpath=//button[@type='submit']
    Click Element   xpath=//div[contains(text(),'Messages')]
    Select Frame    xpath=//iframe[@name='msg']
    Click Element   xpath=//a[normalize-space()='Add New']
    Input Text    xpath=//textarea[@id='note']    Hello
    Select From List By Label    xpath=//select[@id='form_note_type']   Pharmacy
    Select From List By Label    xpath=//select[@id='form_message_status']  Forwarded
    Select From List By Label    xpath=//select[@id='users']    Stone, Fred
    Click Button    id=newnote
    Element Should Contain    id= error_reply_to    Please choose a patient
