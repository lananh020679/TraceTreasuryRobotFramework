*** Settings ***
Documentation  Basic searching functionality
Resource  ../../Resources/eBay_UserDefinedKeywords.robot
Resource  ../../Resources/CommonFunctionality.robot
Library  SeleniumLibrary
Test Setup  Start testcase
Test Teardown   Finish tetscase
*** Variables ***
&{li}  abc=books  bcd=travel
*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This testcase verifies the basic search
    [Tags]  Functional
    #Start testcase
    Verify Search Result
    #Filter result by condition
    #Finish tetscase
*** Keywords ***