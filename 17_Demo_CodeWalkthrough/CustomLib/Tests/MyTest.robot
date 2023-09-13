*** Settings ***
Library  ../Library/MyCustomLib.py

*** Variables ***

*** Test Cases ***
My Library Test
    hello world
    print name  Ericsson
    hello country
    hello country  日本  こんにちは

*** Keywords ***
