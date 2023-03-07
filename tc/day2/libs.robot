*** Settings ***
Documentation           Testing the properties of RobotFrameworks 
...                     colletion and dictionary
Library     Collections


*** Variables ***
@{BASKET}    apple    orange    banana


*** Test Cases ***
Log first content of the basket
    ${fruit}    Get From List       ${BASKET}    0
    Log To Console                  ${fruit}
    Should Not Be Empty             ${fruit}
