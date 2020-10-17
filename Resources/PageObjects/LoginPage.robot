*** Settings ***
Library     SeleniumLibrary
Variables    ../../Resources/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]     ${baseUrl}  ${browser}
    Open Browser     ${baseUrl}  ${browser}
    Maximize Browser Window


Enter Company Name
    [Arguments]     ${companyName}
    Input Text      ${txt_Company_id}    ${companyName}


Enter User Name
    [Arguments]     ${userName}
    Input Text      ${txt_Username_id}      ${userName}


Enter User Password
    [Arguments]     ${passWord}
    Input Text      ${txt_Password_id}      ${passWord}

Click Login
    click button    ${btn_Login_id}

Validate Succesfull Login
    title should be     Trace & Treasury
Error message should be visible
    [Arguments]  ${error}
    #Wait Until Page Contains Element  ${lbl_Invalidlogin_xpath}
    Element Text Should Be  ${lbl_Invalidlogin_xpath}  ${error}
Close My Browser
    close all browsers
Click 0n User
    click button  ${btn_User}
Click On Uitloggen
    #Wait Until Page Does Not Contain Element  ${span_Uitloggen}
    Click Element  ${span_Uitloggen}