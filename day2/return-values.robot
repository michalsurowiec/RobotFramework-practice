*** Test Cases ***
Assign Return Values To Variables
    @{colours}      Create List     red     black   purple
    ${length}       Get Length    ${colours}
    Log To Console    This list has a length of: ${length} 