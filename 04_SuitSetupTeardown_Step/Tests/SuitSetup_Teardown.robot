*** Settings ***
Documentation  Test Setup & Test teardown example
Library  Selenium2Library

Suite Setup  Log  Collecting Data from DB
Suite Teardown  Log  Storing Data into DB

Test Setup  open browser  about:blank  ${BROWSER}
Test Teardown  close browser

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Check if Python web site is up and running
    [Documentation]  This is Python site test
    [Tags]  python
    go to  https://www.python.org
    wait until page contains  Python

Check if Robot web site is up and running
    [Documentation]  This is Robot site test
    [Tags]  robot
    go to  http://www.robotframework.org
    wait until page contains  Robot Framework

*** keywords ***
