*** Settings ***
Documentation  Passing Variables to user defined Keywords
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Passing Scalar Variables
    Begin Web Test with Scalar  http://www.google.com  chrome

Passing List Variables
    @{list_url_browser} =  Create List  http://www.google.com  chrome
    Begin Web Test with List  @{list_url_browser}

Passing Dict Variables
    &{dict_url_browser} =  create dictionary  url=http://www.google.com  browser=chrome
    Begin Web Test with Dict  &{dict_url_browser}

*** Keywords ***
Begin Web Test with Scalar
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    close browser

Begin Web Test with List
    [Arguments]  @{url_browser_list}
    open browser  @{url_browser_list}[0]  @{url_browser_list}[1]
    close browser

Begin Web Test with Dict
    [Arguments]  &{url_browser_dict}
    open browser  &{url_browser_dict}[url]  &{url_browser_dict}[browser]
    close browser