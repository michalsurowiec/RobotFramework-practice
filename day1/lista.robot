*** Settings ***
Documentation          Testing the properties of RobotFrameworks 
...                    colletion and dictionary


*** Variables ***
@{BASKET}    apple    orange    banana
&{DICTIONARY}    one=jeden    two=dwa    three=trzy    
...             four=cztery    five=piec


*** Test Cases ***
Log contents of the basket
    Log To Console          ${BASKET}
    Variable Should Exist   \${BASKET}

Log first content of the basket
    Log To Console          ${BASKET}[0]
    Should Be Equal         ${BASKET}[0]           apple

Log contents of the dictionary
    Log To Console          ${DICTIONARY}
    Variable Should Exist   \${DICTIONARY}

Log first content of the dictionary
    Log To Console          ${DICTIONARY.one}
    Should Be Equal         ${DICTIONARY.one}   jeden
