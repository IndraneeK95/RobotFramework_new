*** Settings ***

Library    Collections
Library    OperatingSystem
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
    ${len}      Get Length    ${COLORS}
    Log To Console    ${len}
    

TC4
    @{llist}    Create List     Mango       Apple       Orange
    Log To Console    ${llist}
    Remove Values From List    ${llist}     Apple
    Log To Console    ${llist}
    Append To List    ${llist}      Guava
    Log To Console    ${llist}
    Insert Into List    ${llist}        1      Jackfruit
    Log To Console    ${llist}
    Log List    ${llist}