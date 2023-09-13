*** Settings ***
Documentation  Verify Search Results & click the first product
Library  Selenium2Library

*** Variables ***
${first_search_result}  css=#result_0 a.s-access-detail-page

*** Keywords ***
Click First Searched Product
    [Arguments]  ${search_product}
    Verify Search Completd  ${search_product}
    Click Product Link

Verify Search Completd
    [Arguments]  ${search_product}
    wait until page contains  results for "${search_product}"

Click Product Link
    [Documentation]  Click the first product in the search result
    click link  ${first_search_result}