*** Settings ***
Resource  ./PageObjects/LandingPage.robot
Resource  ./PageObjects/SearchBar.robot
Resource  ./PageObjects/SearchResult.robot
Resource  ./PageObjects/Product.robot
Resource  ./PageObjects/Signin.robot

*** Variables ***

*** Keywords ***
Search for product
    LandingPage.Page Load
    SearchBar.Search

Select First Product from Search Results
    SearchResult.Click First Searched Product

Add Selected Product to Cart
    Product.Add to Cart

Verify Signin Page Loaded
    Signin.Verify Page