*** Test Cases ***
Assign Return Values To Variables
    @{colours}      Create List     red     black   purple
    ${length}       Get Length    ${colours}
    Log To Console    This list has a length of: ${length} 

My New Car
    &{my_new_car}       Create Dictionary       mark=Opel       model=Corsa         colour=blue
    Log To Console      My car is ${my_new_car.mark} ${my_new_car.model} and it's ${my_new_car.colour}
