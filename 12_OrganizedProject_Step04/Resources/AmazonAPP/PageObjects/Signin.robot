*** Settings ***
Documentation  Verify Signin page load
Library  Selenium2Library

*** Variables ***
${sign_in_button}  id=signInSubmit
${create_your_amazon_account_button}  id=createAccountSubmit

*** Keywords ***
Verify Page
    Verify Signin Button
    Verify Create Accout Link

Verify Signin Button
    page should contain button  ${sign_in_button}

Verify Create Accout Link
    element text should be  ${create_your_amazon_account_button}  Create your Amazon account