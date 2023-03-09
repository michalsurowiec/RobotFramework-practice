*** Variables ***
${COUNTER}      0


*** Test Cases ***
Test Variables  
    Log To Console      Counter: ${COUNTER}
    Set Test Variable       ${ZMIENNA}
    Set Global Variable     ${GLOBAL}
    Keyword For Variable Scopes
    ${zmienna}          Set Variable    1
    Log To Console    Counter: ${zmienna}


*** Keywords ***
Keyword For Variable Scopes
    Log To Console    COUNTER: ${COUNTER}