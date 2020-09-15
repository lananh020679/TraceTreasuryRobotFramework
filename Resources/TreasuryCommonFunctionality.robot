*** Settings ***
Library  SeleniumLibrary
*** Variables ***
&{baseUrls}  infrastructure=https://treasury201804.aareoncloud.nl  kasstroomm=https://treasury-keylib.aareoncloud.nl/
${browser}  Chrome
*** Keywords ***
Start test enviroment
    Open Browser  ${baseUrls.infrastructure}  ${browser}
    Maximize Browser Window
Finish test enviroment
    Close Browser