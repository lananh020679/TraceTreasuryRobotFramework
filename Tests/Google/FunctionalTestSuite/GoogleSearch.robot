*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Keywords ***

*** Test Cases ***
This is sample testcase
    [Documentation]  Googel test
    [Tags]  regression
    Open Browser  https://www.google.nl/  Chrome
    Close Browser
