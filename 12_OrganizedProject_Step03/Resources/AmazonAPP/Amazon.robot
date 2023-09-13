*** Settings ***
Documentation  Self contained package for Amazon to check for different search terms.
Resource  ./PageObjects/LandingPage.robot
Resource  ./PageObjects/SearchBar.robot
Resource  ./PageObjects/SearchResult.robot
Resource  ./PageObjects/Product.robot
Resource  ./PageObjects/Cart.robot
Resource  ./PageObjects/Signin.robot

*** Variables ***

*** Keywords ***
Search for product
    [Arguments]  ${search_product}
    LandingPage.Page Load
    SearchBar.Search  ${search_product}

Select First Product from Search Results
    [Arguments]  ${search_product}
    SearchResult.Click First Searched Product  ${search_product}

Add Selected Product to Cart
    [Arguments]  ${search_product}
    Product.Add to Cart  ${search_product}

Check out
    Cart.Check out

Verify Signin Page Loaded
    Signin.Verify Page