*** Settings ***
Library  SeleniumLibrary
Variables    ../../Resources/Locators.py
*** Keywords ***
#Click On NIEUW Button
#    Wait Until Page Contains Element    ${VerdlingVBedragen_NIEUW}
#    Click Element    ${VerdlingVBedragen_NIEUW}
Enter Code Value
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${NieuweVerdlingVBedrag_Code}  10
    Input Text  ${NieuweVerdlingVBedrag_Code}  ${value}
Enter Omschrijving Value
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${NieuweVerdlingVBedrag_Omschrijving}  10
    Input Text  ${NieuweVerdlingVBedrag_Omschrijving}  ${value}
Click Opslaan Button
    #Wait Until Page Contains Element ${btn_Opslaan_xpath}
    Click Element  ${btn_Opslaan_xpath}
Click back button
    Click Element  ${btn_Back_xpath}
Validate error message Verdeling van bedrag met de code
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${NieuweVerdlingVBedrag_Error}
    ${text}  Get Text   ${NieuweVerdlingVBedrag_Error}
    Log  ${text}
    Element Text Should Be  ${NieuweVerdlingVBedrag_Error}  ${value}