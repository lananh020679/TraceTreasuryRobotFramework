*** Settings ***
Library  SeleniumLibrary
Variables    ../../Resources/Locators.py
*** Variables ***
@{value}  Lening  Belegging
*** Keywords ***
Validate Succesfull Lening Screen Opening
    sleep  3s
    #Wait Until Page Contains Element ${LeningPageHeader_xpath}  10
    Page Should Contain Element  ${LeningPageHeader_xpath}
Close My Browser
    close all browsers
Click On FinanInstrumenten Menu
    Wait Until Page Contains Element     ${mnu_FinanInstrumenten_xpath}    10
    Click Element   ${mnu_FinanInstrumenten_xpath}
Click On Leningen Item
    Wait Until Page Contains Element    ${mnuitem_Leningen_xpath}   10
    Click Element   ${mnuitem_Leningen_xpath}
Click On Nieuw Button
    Wait Until Page Contains Element    ${btn_Nieuws_xpath}
    Click Element    ${btn_Nieuws_xpath}
Choice Sort Leningen
    Wait Until Page Contains Element    ${drd_Sortleningen_xpath}
    Click Element   ${drd_Sortleningen_xpath}
Click OK Button
    Wait Until Page Contains Element    ${btn_OK_xpath}
    Click Button   ${btn_OK_xpath}

# Fulling Lening Screen
#Choice Sort Leningen
Choice Lening
    Select From List By Index   ${drd_ChoiceSortLeningen_xpath}     0
Choice Belegging
    Select From List By Index   ${drd_ChoiceSortLeningen_xpath}     1
Handeling Drp SoortLeningen
    Wait Until Page Contains Element    ${drd_ChoiceSortLeningen_xpath}
    Run Keyword if  @{value}[0] == Lening       Choice Lening
    ...  ELSE IF  @{value}[1] == Belegging    Choice Belegging
    ...  ELSE       Choice Lening

    #Select From List By Index   ${drd_ChoiceSortLeningen_xpath}     ${index}
Genarate lening number
    Wait Until Page Contains Element    ${btn_Geneer_xpath}  10
    Click Button  ${btn_Geneer_xpath}
Enter Nominal Value
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${txt_Nomiale_Waader_Xpath}  10
    Input Text  ${txt_Nomiale_Waader_Xpath}  ${value}
#Choice relation
Click Relation Dropdrown
    Wait Until Page Contains Element  ${drd_Relaties_xpath}  10
    Click Element  ${drd_Relaties_xpath}
Search Relation
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${txt_NumberRealtie_xpath}  10
    Input Text  ${txt_NumberRealtie_xpath}  ${value}
Click the first relation row
    Wait Until Page Contains Element  ${td_Frirst_Number_xpath}  10
    Click Element  ${td_Frirst_Number_xpath}
Choice a relation
    [Arguments]  ${value}
    Click Relation Dropdrown
    Search Relation  ${value}
    Sleep  1s
    Click the first relation row
There are no found relation
   [Arguments]  ${value}  ${message}
   Click Relation Dropdrown
   Search Relation  ${value}
   Sleep  3s
   Element Text Should Be  ${td_NoRelatieIn_xpath}  ${message}
   #Element Should Contain  ${td_NoRelatieIn_xpath}  ${atr}  ${message}
Enter starting date
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${txt_StartDatum_xpath}
    Input Text   ${txt_StartDatum_xpath}  ${value}
Click Sluiten Button
    #Wait Until Page Contains Element ${btn_Sluiten_xpath}
    Click Button  ${btn_Sluiten_xpath}
Enter Looptijd
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${txt_Looptijd_xpath}
    Input Text   ${txt_Looptijd_xpath}  ${value}
Click Opslaan Button
    #Wait Until Page Contains Element ${btn_Opslaan_xpath}
    Click Element  ${btn_Opslaan_xpath}
Scoll down
    #execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep  2s
    Scroll Element Into View  xpath:${txt_Verpanding_Eindatum_Xpath}
Validate the pledge effective date
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${txt_Verpanding_Ingangsdatum_Xpath}
    ${text}  Get Text   ${txt_Verpanding_Ingangsdatum_Xpath}
    Log  ${text}
    Element Text Should Be  ${txt_Verpanding_Ingangsdatum_Xpath}  ${value}

Validate the pledge on end date
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${txt_Verpanding_Eindatum_Xpath}
    ${text}  Get Text   ${txt_Verpanding_Eindatum_Xpath}
    Log  ${text}
    Element Should Contain  ${txt_Verpanding_Eindatum_Xpath}  ${value}
Validate the 1st message
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${lbl_AutoIngvul_xpath}
    ${text}  Get Text   ${lbl_AutoIngvul_xpath}
    Log  ${text}
    Element Text Should Be  ${lbl_AutoIngvul_xpath}  ${value}