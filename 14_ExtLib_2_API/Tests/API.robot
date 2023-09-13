*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library
Suite Teardown  Delete All Sessions

*** Variables ***
${GITHUB_SESSION}

*** Test Cases ***
Check Github Username
    # Create the session
    Create Session  ${GITHUB_SESSION}  https://api.github.com

    # GET Chris Wanstrath's GitHub profile:
    ${response} =  Get Request  ${GITHUB_SESSION}  users/defunkt

    # Check the response status
    should be equal as strings  ${response.status_code}  200

    # Check the response body
    ${json} =  set variable  ${response.json()}
    should be equal as strings  ${json['login']}  defunkt
    Log  ${json}

Display Emoji
    # GET emojis. Use the same session created above.
    ${response} =  Get Request  ${GITHUB_SESSION}  emojis

    # Check the response status
    should be equal as strings  ${response.status_code}  200

    # Check the response body
    ${json} =  set variable  ${response.json()}
    ${emoji_url} =  set variable  ${json['alarm_clock']}
    open browser  ${emoji_url}  chrome

*** Keywords ***