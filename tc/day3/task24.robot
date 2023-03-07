*** Settings ***
Library    String


*** Variables ***
${TEXT1}    Robot Framework
${TEXT2}    infoShare Academy
${TEXT3}    Hello, World
${TEXT4}    Marek Starzyk


*** Test Cases ***
Return First Word From The String
    ${first_word_1}     Fetch First Word From Phrase    ${TEXT1}
    ${first_word_2}     Fetch First Word From Phrase    ${TEXT2}
    ${first_word_3}     Fetch First Word From Phrase    ${TEXT3}
    ${first_word_4}     Fetch First Word From Phrase    ${TEXT4}
    Log To Console      ${first_word_1} 
    Log To Console      ${first_word_2} 
    Log To Console      ${first_word_3} 
    Log To Console      ${first_word_4} 

Return First Word From The String In Upper Case 
    ${first_word_1}     Fetch First Word From Phrase In Upper Case    ${TEXT1}
    ${first_word_2}     Fetch First Word From Phrase In Upper Case    ${TEXT2}
    ${first_word_3}     Fetch First Word From Phrase In Upper Case    ${TEXT3}
    ${first_word_4}     Fetch First Word From Phrase In Upper Case    ${TEXT4}
    Log To Console      ${first_word_1}
    Log To Console      ${first_word_2}
    Log To Console      ${first_word_3}
    Log To Console      ${first_word_4}

*** Keywords ***
Fetch First Word From Phrase
    [Arguments]     ${phrase}
    @{words}        Split String    ${phrase}
    RETURN          ${words}[0]

Fetch First Word From Phrase In Upper Case
    [Arguments]                 ${phrase}   
    ${word}                     Fetch First Word From Phrase    ${phrase}
    ${word_uppercase}           Convert To Upper Case           ${word}
    Should Be Upper Case        ${word_uppercase}
    ${word_uppercase_nocomma}   Remove String                   ${word_uppercase}      ,
    RETURN                      ${word_uppercase_nocomma}


