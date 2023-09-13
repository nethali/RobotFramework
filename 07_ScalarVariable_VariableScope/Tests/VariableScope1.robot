*** Settings ***
Resource  ../Resources/GlobalSettings.robot

*** Variables ***
# Suit Variables
${MY_NAME_IS}  My name is
${NAME}  usb

*** Test Cases ***
Print out variable values
    log  ${MY_NAME_IS}
    log  ${NAME}
    log  ${THE_GLOBAL_VAR}

Test Variable 1
    ${my_new_variable_1} =  Set Variable  My new local variable 1
    Log  ${my_new_variable_1}
    log  ${THE_GLOBAL_VAR}

Test Variable 2
    ${my_new_variable_2} =  Set Variable  My new local variable 2
    Log  ${my_new_variable_2}
    #Log  ${my_new_variable_1}
    log  ${THE_GLOBAL_VAR}

Keyword Variable Check
    ${my_new_variable_3} =  Set Variable  My new local variable 3
    Keyword Variable 1
    #Log  ${my_new_variable_4}
    log  ${THE_GLOBAL_VAR}

*** Keywords ***
Keyword Variable 1
    ${my_new_variable_4} =  Set Variable  My new local variable 4
    Log  ${my_new_variable_4}
    #Log  ${my_new_variable_3}
    log  ${THE_GLOBAL_VAR}