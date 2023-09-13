*** Settings ***

*** Variables ***
&{GLOBAL_USER}  name=root  password=abc123

*** Test Cases ***
Check the dict
    Log  &{GLOBAL_USER}[name]
    Log  &{GLOBAL_USER}[password]

Another way of accessing
    Log  ${GLOBAL_USER.name}
    Log  ${GLOBAL_USER.password}