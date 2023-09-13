*** Settings ***
Documentation  Testing Amazon.com web site
Library  Selenium2Library
Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon.robot

Suite Setup  Common.Begin Suite
Suite Teardown  Common.End Suite
Test Setup  Common.Begin Test
Test Teardown  Common.End Test

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
User must login befor check out
    [Documentation]  Some basic operation checking
    [Tags]  amazon

    Amazon.Search for product
    Amazon.Select First Product from Search Results
    Amazon.Add Selected Product to Cart
    Amazon.Verify Signin Page Loaded