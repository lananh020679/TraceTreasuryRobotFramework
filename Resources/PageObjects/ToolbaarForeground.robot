*** Settings ***
Library  SeleniumLibrary
Variables    ../../Resources/Locators.py
*** Keywords ***
Click on IMPORTEREN CSV button
    #sleep  3s
    Wait Until Page Contains Element    ${toolbaar_EXPOTEREN_CSV}
    Click Element    ${toolbaar_EXPOTEREN_CSV}
Click On NIEUW Button
    Wait Until Page Contains Element    ${VerdlingVBedragen_NIEUW}
    Click Element    ${VerdlingVBedragen_NIEUW}
Click On OPSLAAN Button
    Wait Until Page Contains Element    ${btn_Opslaan_xpath}
    Click Element    ${btn_Opslaan_xpath}
Click on Back button
    Wait Until Page Contains Element    ${btn_Back_xpath}
    Click Element    ${btn_Back_xpath}
