*** Settings ***
Library  ../Library/MyCustomLib.py

*** Variables ***
${COUNTRY}  日本
${GREETING}  こんにちは

*** Keywords ***
Print Hello Country
    hello country  ${COUNTRY}

Print Greeting in Japan
    greet country  ${COUNTRY}  ${GREETING}