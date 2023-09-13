*** Settings ***

*** Variables ***
# Suit Variables
${MY_NAME_IS}  My first name is
${NAME}  John

*** Test Cases ***
Print out variable values
    log  ${MY_NAME_IS}
    log  ${NAME}