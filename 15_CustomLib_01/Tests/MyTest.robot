*** Settings ***
Library  ../Library/MyCustomLib.py

*** Variables ***

*** Test Cases ***
My Library Test
    hello world
    print name  Nethali
    hello country
    hello country  France  Bonjour

*** Keywords ***
