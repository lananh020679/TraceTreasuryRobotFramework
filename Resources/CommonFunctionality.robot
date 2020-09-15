*** Settings ***
Library  SeleniumLibrary
*** Variables ***
&{baseUrls}  infrastructure=https://treasury201804.aareoncloud.nl  kasstroomm=https://treasury-keylib.aareoncloud.nl/
*** Keywords ***
Start testcase
    Open Browser  ${baseUrls.infrastructure}  Chrome
    Maximize Browser Window
    sleep  3s
Finish tetscase
    Close Browser