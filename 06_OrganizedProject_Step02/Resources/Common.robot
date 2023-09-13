*** Settings ***
Documentation  All common functionality goes here
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Begin Suite
    Log  Test Suite begins

End Suite
    Log  Test Suite over

Begin Test
    Open browser  about:blank  ${BROWSER}

End Test
    close browser