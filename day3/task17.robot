*** Variables ***
@{FIBONACCI}    1   1   2   3   5   8   10


*** Test Cases ***
Checking Get Count Keyword No Arguments
    ${value}            Get Count
    Log To Console      ${value}

Checking Get Count Keyword One Argument
    ${value}            Get Count       container=${FIBONACCI}
    Log To Console      ${value}

Checking Get Count Keyword Two Arguments
    ${value}            Get Count       container=${FIBONACCI}    item=1
    Log To Console      ${value}
