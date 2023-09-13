*** Settings ***
Documentation  Add the product to cart
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Add to Cart
    [Arguments]  ${search_product}
    Verify Product Page  ${search_product}
    Click Add to Cart

Verify Product Page
    [Arguments]  ${search_product}
    wait until page contains  Back to search results for "${search_product}"

Click Add to Cart
    click button  id=add-to-cart-button