*** Test Cases ***
Greet Me And My Group
    Greet Person        Michal
    Greet Person        Mateusz
    Greet Person        Marek
    Greet Person        Wiktoria


*** Keywords ***
Greet Person
    [Arguments]         ${name}
    Log To Console      Hello, ${name}
