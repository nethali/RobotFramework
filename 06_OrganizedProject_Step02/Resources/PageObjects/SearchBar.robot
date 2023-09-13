*** Settings ***
Documentation  Search specific product on search bar
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Search
    Enter Search Term
    Submit Search

Enter Search Term
    input text  id=twotabsearchtextbox  usb

Submit Search
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input