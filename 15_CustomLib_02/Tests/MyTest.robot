*** Settings ***
Library  ../Library/MyCustomLib.py

# Call the class  initializer __init__
Library  MyCustomLib.MyMathLib  100  5

*** Variables ***

*** Test Cases ***
My Custom Lib Test
    hello world
    print name  Nethali
    hello country
    hello country  country=France  greeting=Bonjour


My Second Custom Lib Test
    ${sum} =  add
    Log  ${sum}

*** Keywords ***
