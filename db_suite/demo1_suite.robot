*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306

Suite Teardown   Disconnect From Database


*** Test Cases ***
TC1
    Table Must Exist    Products
    ${count}        Row Count    Select * from Products
    Log To Console    ${count}

TC2
    Row Count Is Equal To X    Select * from Products    62
    
TC3
    Execute Sql String    Insert into Products (product_id,productname,description) values (67,'box','justname')
    Row Count Is Equal To X    Select * from Products where product_id=67    1