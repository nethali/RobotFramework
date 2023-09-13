*** Settings ***
Library  ../Library/MyCustomLib1.py
Library  ../Library/MyCustomLib2.py

*** Variables ***

*** Test Cases ***
My Custom Lib 1 Test
    My Keyword
    #My Private Keyword

My Custom Lib 2 Test
    My Keyword 1
    My Keyword 2
    #My Keyword 3

*** Keywords ***
