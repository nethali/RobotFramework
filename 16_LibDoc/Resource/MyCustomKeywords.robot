# To generate the document of the following user defined Keywords, use the following command:
# python -m robot.libdoc --name "My Custom Keywords" Resource/MyCustomKeywords.robot Docs\MyCustomKeywords.html

*** Settings ***
Documentation    This is my own custom keywords.
...              It has 2 key words.

Library  Selenium2Library

*** Variables ***
${BROWSER}  chrome

*** keywords ***
Test Python site
    [Documentation]  Test https://www.python.org site for word Python
    open browser  https://www.python.org  ${BROWSER}
    wait until page contains  Python
    close browser

Test URL for a given keyword
    [Documentation]  Test given web site for a given keyword
    ...              Examples:
    ...              | Test URL for a given keyword | url | keyword to be checked |
    [Arguments]  ${url}  ${keyword}
    open browser  ${url}  ${BROWSER}
    wait until page contains  ${keyword}
    close browser

