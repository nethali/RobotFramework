*** Settings ***
Library  ../Library/MyCustomLib.py
Resource  ../Resource/MyCustomKeywords.robot

*** Variables ***

*** Test Cases ***
My Custom Lib Test
    hello world
    print name  Nethali
    hello country
    hello country  country=France  greeting=Bonjour

My Custom Keyword Test
    Test Python site
    Test URL for a given keyword  http://www.robotframework.org  Robot Framework

*** Keywords ***