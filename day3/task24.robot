*** Settings ***
Library    String


*** Test Cases ***
Return First Word From The String
    ${text_1}    Set Variable    Robot Framework
    ${text_2}    Set Variable    infoShare Academy
    ${text_3}    Set Variable    Hello, World
    ${text_4}    Set Variable    Marek Starzyk
    ${first_word}    Fetch First Word From Phrase    ${text_1}
    Log To Console    ${first_word} 

*** Keywords ***
Fetch First Word From Phrase
    [Arguments]         ${phrase}
    @{words}       Split String    ${phrase}
    RETURN              ${words}[0]

