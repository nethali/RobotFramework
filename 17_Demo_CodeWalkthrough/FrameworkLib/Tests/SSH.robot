*** Settings ***
Documentation  SSH to remote host and check for specific file content
Library  SSHLibrary

Test Setup  Open Connection And Log In
Test Teardown  Close All Connections

*** Variables ***
${HOST}  192.168.33.10
${USER}  vagrant
${PASSWORD}  vagrant

*** Test Cases ***
Execute Command on Remote Host
    ${output}=  Execute Command  cat ~/LogCollector/ansible.cfg
    Log  ${output}
    Should Contain  ${output}  forks = 5

*** Keywords ***
Open Connection And Log In
    Open Connection  ${HOST}
    Login  ${USER}  ${PASSWORD}