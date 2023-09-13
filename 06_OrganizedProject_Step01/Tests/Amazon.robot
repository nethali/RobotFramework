*** Settings ***
Documentation  Testing Amazon.com web site
Library  Selenium2Library

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
User must login befor check out
    [Documentation]  Some basic operation checking
    [Tags]  amazon
    Open browser  about:blank  ${BROWSER}
    go to  http://www.amazon.com
    wait until page contains  Hello
    input text  id=twotabsearchtextbox  usb
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for "usb"
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results for "usb"
    click button  id=one-click-button
    wait until page contains  Sign in
    element text should be  id=createAccountSubmit  Create your Amazon account
    close browser