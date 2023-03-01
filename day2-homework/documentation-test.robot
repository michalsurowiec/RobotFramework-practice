*** Settings ***
Documentation    My test suite focuses on "Create Dictionary" keyword


*** Variables ***
&{BASE_DICT}    one=jeden   two=dwa     three=trzy


*** Test Cases ***
Smoke Test - Create Dictionary by keyword
    &{dictionary}       Create Dictionary   one=jeden   two=dwa     three=trzy
    Should Be Equal    ${dictionary}    ${BASE_DICT}

Create Dictionary By Using Separators
    &{dictionary}       Create Dictionary   one     jeden   two     dwa     three       trzy
    Should Be Equal    ${dictionary}    ${BASE_DICT}

Create Dictionary By Using Equal Signs and Separators
    &{dictionary}       Create Dictionary   one=jeden   two     dwa     three=trzy
    Should Be Equal    ${dictionary}    ${BASE_DICT}

Create Dictionary By Injecting Another Dictionary
    &{injection_dict}   Create Dictionary   two=dwa     three=trzy
    &{dictionary}       Create Dictionary   one=jeden   &{injection_dict}
    Should Be Equal    ${dictionary}    ${BASE_DICT}

Create Dictionary By Injecting Another Dictionary And Replacing One Value
    &{injection_dict}   Create Dictionary   two=dwa     three=3
    &{dictionary}       Create Dictionary   one=jeden   &{injection_dict}   three=trzy
    Should Be Equal    ${dictionary}    ${BASE_DICT}
    