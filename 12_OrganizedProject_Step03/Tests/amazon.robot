*** Settings ***
Documentation  Testing Amazon.com web site
Library  Selenium2Library
Resource  ../Resources/GlobalSettings.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonAPP/Amazon.robot

Suite Setup  Common.Begin Suite
Suite Teardown  Common.End Suite
Test Setup  Common.Begin Test With Browser  ${BROWSER}
Test Teardown  Common.End Test

*** Variables ***
${SEARCH_TERM} =  usb

*** Test Cases ***
User must login befor check out
    [Documentation]  Some basic operation checking
    [Tags]  amazon

    Amazon.Search for product  ${SEARCH_TERM}
    Amazon.Select First Product from Search Results  ${SEARCH_TERM}
    Amazon.Add Selected Product to Cart  ${SEARCH_TERM}
    Amazon.Check out
    Amazon.Verify Signin Page Loaded