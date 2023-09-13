*** Settings ***
Documentation  Verify Signin page load
Library  Selenium2Library

*** Keywords ***
Verify Page
    Verify Signin Button
    Verify Create Accout Link

Verify Signin Button
    page should contain button  id=signInSubmit

Verify Create Accout Link
    element text should be  id=createAccountSubmit  Create your Amazon account