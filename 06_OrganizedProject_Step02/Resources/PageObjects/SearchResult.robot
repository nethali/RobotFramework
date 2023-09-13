*** Settings ***
Documentation  Verify Search Results & click the first product
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Click First Searched Product
    Verify Search Completd
    Click Product Link

Verify Search Completd
    wait until page contains  results for "usb"

Click Product Link
    [Documentation]  Click the first product in the search result
    click link  css=#result_0 a.s-access-detail-page