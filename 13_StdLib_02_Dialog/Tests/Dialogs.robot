*** Settings ***
Documentation  Dialogs standard library
Library  Selenium2Library
Library  Dialogs

Test Setup  open browser  about:blank  ${BROWSER}
Test Teardown  close browser

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Check if Python web site is up and running
    [Documentation]  This is Python site test
    [Tags]  python
    # Get slection for the user
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie
    Set Global Variable  ${BROWSER}  ${new_browser}
    go to  https://www.python.org
    wait until page contains  Python

Check if Robot web site is up and running
    [Documentation]  This is Robot site test
    [Tags]  robot
    # Let user to execute manual steps
    Execute Manual Step  Please drink a coffee!  Had a coffee!
    go to  http://www.robotframework.org
    wait until page contains  Robot Framework
    # Just stop execution
    Pause Execution

Find keyword in Robot Framework User Guid
    [Documentation]  This is Robot User Guide test
    [Tags]  robotuser
    go to  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
    ${keyword} =  Get Value From User  What word must be on this page  Robot
    wait until page contains  ${keyword}

*** keywords ***