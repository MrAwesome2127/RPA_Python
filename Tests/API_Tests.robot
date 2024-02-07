*** Settings ***
Documentation       API Test on GitHub
Resource            ../Resources/API/GitHub.robot

*** Variables ***


*** Keywords ***
Make a API REST call
    [Tags]    API
    Check GiitHub Username

Display emoji from GitHub
    [Tags]    API
    Display Emoji