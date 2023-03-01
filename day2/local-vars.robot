*** Test Cases ***
My Favourite colour
    ${colour}           Set Variable        red
    Log To Console      My favourite colour is ${colour}
    Should Not End With     ${colour}       .

My Least Favourite Colour
    ${colour}           Set Variable        yellow
    Log To Console      My least favourite colour is ${colour}
    Should Not Be Equal    ${colour}        red

Hard To Decide
    ${colour1}      Set Variable    red
    ${colour2}      Set Variable    black
    ${colour3}      Set Variable    purple
    Log To Console      ${\n}My favourite colours are: 
    ...                 ${\n}${colour1}, ${\n}${colour2}, ${\n}${colour3}
    Should Not Be Equal    ${colour1}    ${colour2}
    Should Not Be Equal    ${colour2}    ${colour3}
    Should Not Be Equal    ${colour3}    ${colour1}

Colours in a list
    @{colours}      Create List     red     black   purple
    Log To Console    ${\n}${colours}
    Log To Console    My most favourite colour is ${colours}[0]
    Should Not Be Empty    ${colours}
