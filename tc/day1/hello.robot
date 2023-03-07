*** Settings ***
Documentation        Testing the methods of greeting a person


*** Variables ***
${NAME}         Michal
${GREETINGS}    Hello, ${NAME}


*** Test Cases ***
Greet Person
    [Tags]                      greetings
    Log To Console              Hello, Michal

Greet Person with Name
    [Tags]                      greetings
    Log To Console              Hello, ${NAME}
    Variable Should Exist       \${NAME}

Show Greetings
    [Tags]                      greetings
    Log To Console              ${GREETINGS}
    Variable Should Exist       \${GREETINGS}
