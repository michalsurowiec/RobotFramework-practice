*** Variables ***
${NAME}         Michal
${GREETINGS}    Hello, ${NAME}


*** Test Cases ***
Greet Person
    Log To Console    Hello, Michal

Greet Person with Name
    Log To Console    Hello, ${NAME}

Show Greetings
    Log To Console    ${GREETINGS}
