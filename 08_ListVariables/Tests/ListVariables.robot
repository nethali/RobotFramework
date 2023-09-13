*** Settings ***

*** Variables ***
# Global Scalr
${MY_GLOBAL_SCALAR}  I am Global

# Global List
@{MY_LIST_VARIABLE}  I  am  Nethali


*** Test Cases ***
Log the list varaible
    Log  @{MY_LIST_VARIABLE}[0]
    Log  @{MY_LIST_VARIABLE}[1]
    Log  @{MY_LIST_VARIABLE}[2]

Creat list in Test Case
    # Local Variable
    # Set Variable can be used.
    @{test_case_list} =  Set Variable  I  am  test case
    Log  @{test_case_list}[0]
    Log  @{test_case_list}[1]
    Log  @{test_case_list}[2]

    # But Create List is recommended.
    @{another_list} =  create list  I  am  another list
    Log  @{another_list}[0]
    Log  @{another_list}[1]
    Log  @{another_list}[2]

Dynamically change Variable
    Log  ${MY_GLOBAL_SCALAR}
    ${MY_GLOBAL_SCALAR} =  set variable  I am local from Global
    Log  ${MY_GLOBAL_SCALAR}