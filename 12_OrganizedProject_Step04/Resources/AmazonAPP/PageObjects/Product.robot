*** Settings ***
Documentation  Add the product to cart
Library  Selenium2Library

*** Variables ***
${add-to-cart-button}  id=add-to-cart-button

*** Keywords ***
Add to Cart
    [Arguments]  ${search_product}
    Verify Product Page  ${search_product}
    Click Add to Cart

Verify Product Page
    [Arguments]  ${search_product}
    wait until page contains  Back to search results for "${search_product}"

Click Add to Cart
    click button  ${add-to-cart-button}