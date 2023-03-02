*** Settings ***
Library    String


*** Test Cases ***


*** Keywords ***
Fetch First Word From Phrase
    [Arguments]         ${phrase}
    ${first_word}       Split String    ${phrase}
    RETURN              ${first_word}

