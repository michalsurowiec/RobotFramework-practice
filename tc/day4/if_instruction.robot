*** Settings ***
Documentation   Haslo to "ciag co najmniej 8 znakow bez sekwencji '123'"


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

