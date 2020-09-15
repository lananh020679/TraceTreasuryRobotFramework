*** Settings ***
Documentation  Verify goed account login
Library  SeleniumLibrary
Resource    ../../../Resources/PageObjects/LoginPage.robot
Resource  ../../../Resources/TreasuryCommonFunctionality.robot
Test Setup  Start test enviroment
Test Teardown  Finish test enviroment
Test Template  Invalid login
*** Variables ***


*** Test Cases ***            companyname             username
Right Company, wrong user     Keylib omgeving         omgeving
Wrong Company, right user     eylib omgeving          anhpham
Wrong Company, wrong user     eylib omgeving          nnhpham



#LoginTest
#    [Arguments]  ${companyName}  ${userName}
#    [Documentation]  The test case verifies a goed scenario login
#    [Tags]  Regression
#    Enter Company Name      ${companyName}
#    Enter User Name     ${userName}
#    Click Login
#    Validate Succesfull Login
*** Keywords ***
Invalid login
    [Arguments]  ${companyName}  ${userName}
    [Documentation]  The test case verifies a goed scenario login
    [Tags]  Regression
    Enter Company Name      ${companyName}
    Enter User Name     ${userName}
    Click Login
    Error message should be visible  The provided username and/or password are incorrect.