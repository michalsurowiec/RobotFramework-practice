*** Settings ***
Library    String


*** Test Cases ***


*** Keywords ***
Fetch First Word From Phrase
    [Arguments]         ${phrase}
    @{words}       Split String    ${phrase}
    RETURN              ${words}[0]

