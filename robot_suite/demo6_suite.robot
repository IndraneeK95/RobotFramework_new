*** Variables ***

@{PERSONAL_DETAIL}          firstname=Indranee      lastname=Kashyap
@{STUDENT}          studentId=1001      studentName=John        Percentage=72.2     mailId=john@gmail.com

*** Test Cases ***

TC1
    Log To Console    ${PERSONAL_DETAIL}
    Log To Console    ${PERSONAL_DETAIL}\[firstname]
    
    
TC3
     ${DETAILS}     Create Dictionary       empname=Indranee        company=LT
     Log To Console    ${DETAILS}
     
TC4
     Log To Console    ${PERSONAL_DETAIL}
     Log To Console    ${STUDENT}\[studentId]
 