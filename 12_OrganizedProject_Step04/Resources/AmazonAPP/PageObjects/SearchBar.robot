*** Settings ***
Documentation  Search specific product on search bar
Library  Selenium2Library

*** Variables ***
${search_button}  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search
    [Arguments]  ${search_product}
    Enter Search Term  ${search_product}
    Submit Search

Enter Search Term
    [Arguments]  ${search_product}
    input text  id=twotabsearchtextbox  ${search_product}

Submit Search
    click button  ${search_button}