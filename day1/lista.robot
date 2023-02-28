*** Settings ***
Documentation          Testing the properties of RobotFrameworks 
...                    colletion and dictionary


*** Variables ***
@{BASKET}    apple    orange    banana
&{DICTIONARY}    one=jeden    two=dwa    three=trzy    
...             four=cztery    five=piec


*** Test Cases ***
Log contents of the basket
    Log To Console    ${BASKET}

Log first content of the basket
    Log To Console    ${BASKET}[0]

Log contents of the dictionary
    Log To Console    ${DICTIONARY}

Log first content of the dictionary
    Log To Console    ${DICTIONARY.one}
