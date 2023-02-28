*** Test Cases ***
My Favourite colour
    ${colour}       Set Variable    red
    Log To Console    My favourite colour is ${colour}

My Least Favourite Colour
    ${colour}       Set Variable    yellow
    Log To Console    My least favourite colour is ${colour}

Hard To Decide
    ${colour1}      Set Variable    red
    ${colour2}      Set Variable    black
    ${colour3}      Set Variable    purple
    Log To Console    ${\n}My favourite colours are: ${\n}${colour1}, ${\n}${colour2}, ${\n}${colour3}

Colours in a list
    @{colours}      Create List     red     black   purple
    Log To Console    ${\n}${colours}
    Log To Console    My most favourite colour is ${colours}[0]
