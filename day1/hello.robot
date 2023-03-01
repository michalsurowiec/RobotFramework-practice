*** Settings ***
Documentation        Testing the methods of greeting a person


*** Variables ***
${NAME}         Michal
${GREETINGS}    Hello, ${NAME}


*** Test Cases ***
Greet Person
    Log To Console    Hello, Michal

Greet Person with Name
    Log To Console    Hello, ${NAME}
    Variable Should Exist    \${NAME}

Show Greetings
    Log To Console    ${GREETINGS}
    Variable Should Exist    \${GREETINGS}
