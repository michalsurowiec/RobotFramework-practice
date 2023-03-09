*** Settings ***
Documentation   Haslo to "ciag co najmniej 8 znakow bez sekwencji '123'"
Library         String


*** Variables ***
${VALID_PASSWORD_1}         password
${VALID_PASSWORD_2}         pass12word
${VALID_PASSWORD_3}         password1
${VALID_PASSWORD_4}         password!
${INVALID_PASSWORD_1}       password123
${INVALID_PASSWORD_2}       pass
${INVALID_PASSWORD_3}
${INVALID_PASSWORD_4}       passwor


*** Test Cases ***
Validate Password With IF-END Instruction
    ${validation_results}       Validate Passwords IF-END   ${VALID_PASSWORD_1}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-END   ${VALID_PASSWORD_2}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-END   ${VALID_PASSWORD_3}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-END   ${VALID_PASSWORD_4}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-END   ${INVALID_PASSWORD_1}
    Should Not Be True          ${validation_results}
    ${validation_results}       Validate Passwords IF-END   ${INVALID_PASSWORD_2}
    Should Not Be True          ${validation_results}
    ${validation_results}       Validate Passwords IF-END   ${INVALID_PASSWORD_3}
    Should Not Be True          ${validation_results}
    ${validation_results}       Validate Passwords IF-END   ${INVALID_PASSWORD_4}
    Should Not Be True          ${validation_results}

Validate Password With IF-ELSE Instruction
    ${validation_results}       Validate Passwords IF-ELSE   ${VALID_PASSWORD_1}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-ELSE  ${VALID_PASSWORD_2}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-ELSE  ${VALID_PASSWORD_3}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-ELSE  ${VALID_PASSWORD_4}
    Should Be True              ${validation_results}
    ${validation_results}       Validate Passwords IF-ELSE  ${INVALID_PASSWORD_1}
    Should Not Be True          ${validation_results}
    ${validation_results}       Validate Passwords IF-ELSE  ${INVALID_PASSWORD_2}
    Should Not Be True          ${validation_results}
    ${validation_results}       Validate Passwords IF-ELSE  ${INVALID_PASSWORD_3}
    Should Not Be True          ${validation_results}
    ${validation_results}       Validate Passwords IF-ELSE  ${INVALID_PASSWORD_4}
    Should Not Be True          ${validation_results}


*** Keywords ***
Validate Passwords IF-END
    [Arguments]     ${password}
    ${length}       Get Length      ${password}

    IF      ${length} < 8
        RETURN      ${False}
    END

    ${matches}      Get Regexp Matches      ${password}     123
    IF      ${matches}
        RETURN      ${False}
    END

    RETURN  ${True}

Validate Passwords IF-ELSE
    [Arguments]     ${password}
    ${length}       Get Length      ${password}
    ${matches}      Get Regexp Matches      ${password}     123

    IF          ${length} < 8
        RETURN      ${False}
    ELSE IF     ${matches}
        RETURN      ${False}
    END

    RETURN  ${True}

Validate Passwords IF-ELSE
    [Arguments]     ${password}
    ${length}       Get Length      ${password}
    ${matches}      Get Regexp Matches      ${password}     123

    IF          ${length} < 8
        RETURN      ${False}
    ELSE IF     ${matches}
        RETURN      ${False}
    ELSE
        RETURN  ${True}
    END
