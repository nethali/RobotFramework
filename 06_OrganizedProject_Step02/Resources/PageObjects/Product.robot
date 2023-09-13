*** Settings ***
Documentation  Add the product to cart
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Add to Cart
    Verify Product Page
    Add Product to Cart

Verify Product Page
    wait until page contains  Back to search results for "usb"

Add Product to Cart
    click button  id=one-click-button