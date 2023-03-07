*** Settings ***
Documentation        Testing how to log in console name of test case


*** Test Cases ***
Log the name of this test case
    Log To Console          ${TEST_NAME}
    Should Start With       ${TEST_NAME}    Log