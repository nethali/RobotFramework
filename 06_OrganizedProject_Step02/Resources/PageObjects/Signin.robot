*** Settings ***
Documentation  Verify Signin page load
Library  Selenium2Library

*** Keywords ***
Verify Page
    Verify Create Accout Link

Verify Create Accout Link
    element text should be  id=createAccountSubmit  Create your Amazon account