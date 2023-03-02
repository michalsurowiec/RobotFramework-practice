*** Variables ***
@{CORRECT_LIST}         1   2
@{WRONG_LIST}           1
${CORRECT_INTEGER}      11
${WRONG_INTEGER}        1


*** Test Cases ***
Smoke Test - List With 2 Elements
    Verify That List Has Two Elements       ${CORRECT_LIST}

List With 1 Element
    Verify That List Has Two Elements       ${WRONG_LIST}

Integer With 2 Elements
    Verify That List Has Two Elements       ${CORRECT_INTEGER}

Integer With 1 Element
    Verify That List Has Two Elements       ${WRONG_INTEGER}

*** Keywords ***
Verify That List Has Two Elements
    [Arguments]         @{list}
    Length Should Be    @{list}    2
