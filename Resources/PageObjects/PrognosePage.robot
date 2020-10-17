*** Settings ***
Library     SeleniumLibrary
Variables    ../../Resources/Locators.py
*** Keywords ***
Click On CashManagement Menu
    Wait Until Page Contains Element     ${mnu_CashManagement_xpath}    10
    Click Element   ${mnu_CashManagement_xpath}
Click On Prognoses Item
    Wait Until Page Contains Element    ${mnuitem_Prognoses_xpath}   10
    Click Element   ${mnuitem_Prognoses_xpath}
Click On Plus Button
    Wait Until Page Contains Element    ${button_Add_xpath}
    Click Element    ${button_Add_xpath}
Go to Verdeling van bedragen screen
    Wait Until Page Contains Element    ${NieuwePrognose_OpenOnderhoudsPagina}
    Click Element    ${NieuwePrognose_OpenOnderhoudsPagina}

