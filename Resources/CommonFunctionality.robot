*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/LoginPage.robot
*** Variables ***
&{baseUrls}  infrastructure=https://treasury201804.aareoncloud.nl  kasstroomm=https://treasury-keylib.aareoncloud.nl/
${companyName}  Keylib omgeving
${userName}  anhpham
*** Keywords ***
Start testcase
    Open Browser  ${baseUrls.infrastructure}  Chrome
    Maximize Browser Window
    sleep  3s
Finish tetscase
    Close Browser
Start test enviroment
    LoginPage.Enter Company Name  ${companyName}
    LoginPage.Enter User Name     ${userName}
    LoginPage.Click Login
Uitlog test enviroment
    LoginPage.Click 0n User
    LoginPage.Click On Uitloggen
