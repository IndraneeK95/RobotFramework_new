*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${MY_NAME}  Indranee
@{COLORS}   red     blue    green
** Test Cases ***


TC1
    Set Local Variable    ${name}   Indranee
    Log To Console    ${name}
    Log To Console    ${MY_NAME}
    
TC2
    Log To Console    ${MY_NAME}
    
TC3
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]