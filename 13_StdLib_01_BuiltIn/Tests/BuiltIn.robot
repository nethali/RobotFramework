*** Settings ***
Documentation  Example of Built In Libaries
Library  Selenium2Library

*** Variables ***
${GLOBAL_VAR1}  THIS IS GLOBAL VAR 1

*** Test Cases ***
Declare and set variables
    ${test_var1} =  set variable  This is test variable 1
    set test variable  ${test_var2}  This is test variable 2

    # Available in all thest in the current st suite
    set suite variable  ${suit_var}  This is suit variable

    # Global Available in all test in all suites
    set global variable  ${GLOBAL_VAR2}  THIS IS GLOBAL VAR 2

Loggin stuff
    [Tags]  Builtin
    comment  ${undeclared_var}  # Don't throw an error
    comment  My note during test
    comment  ${GLOBAL_VAR1}

    Log  My 2nd note during test
    Log Many  I have to say  Oh it's going well  Really well
    Log to console  Checking if the test is going from the console
    log variables                # Log all the variables in the scope. Good for debuging
    Log  ${suit_var}
    Log  ${GLOBAL_VAR2}

Continue on failuer of a test case
    [Tags]  Builtin
    open browser  http://www.google.com  chrome
    run keyword and continue on failure  Wait until page contains  My name is on google
    #Wait until page contains  My name is on google
    Log  ${suit_var}
    Log  ${GLOBAL_VAR2}
    close browser

Repeat things
    repeat keyword  4 Times  Say something

*** Keywords ***
Say something
    Log  We are doing automation...