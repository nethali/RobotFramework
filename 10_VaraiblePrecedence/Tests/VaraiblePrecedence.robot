*** Settings ***
Resource  ../Resources/GlobalSettings.robot

*** Variables ***
${THE_VARIABLE}  I am Script Global

*** Test Cases ***
Variable Precedence Testing
    log  ${THE_VARIABLE}
    ${THE_VARIABLE} =  set variable  I am test case
    log  ${THE_VARIABLE}
    keyword testing

*** Keywords ***
Keyword testing
    ${THE_VARIABLE} =  set variable  I am keyword
    log  ${THE_VARIABLE}