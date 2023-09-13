*** Settings ***
Documentation  Proceed to Check out
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Check out
    Verify Cart Page
    Click Check out

Verify Cart Page
    wait until page contains  Cart subtotal (1 item)

Click Check out
    click link  css=#hlb-ptc-btn-native