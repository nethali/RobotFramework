*** Settings ***
Library  ../Library/MyCustomLib.py
Library  MyCustomLib.TestLib
Library  MyCustomLib.SuitLib
Library  MyCustomLib.GlobalLib

*** Variables ***

*** Test Cases ***
1 Testing the TEST LIB
    test count
    test count

2 Testing the TEST LIB
    test count
    test count
    clear test counter
    test count

3 Testing the SUIT LIB
    suit count
    suit count

4 Testing the SUIT LIB
    suit count
    suit count
    clear suit counter
    suit count

5 Testing the GLOBAL LIB
    global count
    global count

6 Testing the GLOBAL LIB
    global count
    global count
    clear global counter
    global count