*** Settings ***
Library     RequestsLibrary
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Check GiitHub Username
    Create Session                  my_github_session           https://api.github.com
    ${response} =   Get Request     my_github_session           users/robotframeworktutorial
    should be equal as strings      ${response.status_code}     200
    ${json} =       set variable    ${response.json()}
    should be equal as strings      ${json['login']}            robotframeworktutorial
    log                             ${json}

Display Emoji
    Create Session                  my_github_session           https://api.github.com
    ${response} =   Get Request     my_github_session           emojis
    should be equal as strings      ${response.status_code}     200
    ${json} =       set variable    ${response.json()}
    ${emoji_URL} =  set variable    ${json['aerial_tramway']}
    open browser                    ${emoji_URL}                chrome