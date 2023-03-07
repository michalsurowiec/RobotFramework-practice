*** Settings ***
Library     String


*** Test Cases ***
Generate Random String With 10 Letter Characters
    ${random_str}       Generate Random String      10      [LETTERS]
    Log To Console      ${\n}${random_str}
    ${random_int}       Generate Random String      9       [NUMBERS]
    Log To Console      ${random_int}
    Should Match Regexp    ${random_str}    ^[a-zA-Z]+$
    Should Match Regexp    ${random_int}    ^[\\d]+$
