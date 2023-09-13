*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Check if Python web site is up and running
    [Documentation]  This is python site test
    [Tags]  python
    open browser  https://www.python.org/  ${BROWSER}
    wait until page contains  Python
    close browser

Check if Robot web site is up and running
    [Documentation]  This is robot site test
    [Tags]  robot
    open browser  http://robotframework.org/  ${BROWSER}
    wait until page contains  Robot Framework
    close browser

*** keywords ***

