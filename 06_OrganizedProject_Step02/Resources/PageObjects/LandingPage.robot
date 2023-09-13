*** Settings ***
Documentation  Landing page of Amazon web site
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Page Load
    Load
    Verify Page Loaded

Load
    go to  http://www.amazon.com

Verify Page Loaded
    wait until page contains  Hello