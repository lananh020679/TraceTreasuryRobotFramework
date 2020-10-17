Library  SeleniumLibrary
Variables    ../../Resources/Locators.py
*** Keywords ***
Validate column Position distribution of amount code
    Wait Until Page Contains Element  ${Positie_van_prognose_scope_column}
    Page Should Contain Element  ${Positie_van_prognose_scope_column}
Click on Genereer botton
    Wait Until Page Contains Element  ${CsvIndeling_Genereer}
    Click Element  ${CsvIndeling_Genereer}
Enter Omshrijving
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${CsvIndeling_Omschrijving}
    Input Text   ${CsvIndeling_Omschrijving}  ${value}
Enter Positie van bankrekening
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${CsvIndeling_PositieBank}
    Input Text   ${CsvIndeling_PositieBank}  ${value}
Enter Positie van Datum
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${CsvIndeling_PositieDatum}
    Input Text   ${CsvIndeling_PositieDatum}  ${value}
Enter Positie van bedrag
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${CsvIndeling_PositieBedrag}
    Input Text   ${CsvIndeling_PositieBedrag}  ${value}
Enter Positie van omschrijving
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${CsvIndeling_PositieOmschrijving}
    Input Text   ${CsvIndeling_PositieOmschrijving}  ${value}
Select Sheidingsteken
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${CsvIndeling_Scheidingsteken}
    Select From List By Label  ${CsvIndeling_Scheidingsteken}  ${value}
Select radio button dd_mmm_jjjj
    Wait Until Page Contains Element  ${dd_mmm_jjjj}
    Select Radio Button  DateFormat  dd_mmm_yyyy
Select radio button dd_mm_jjjj
    Wait Until Page Contains Element  ${dd_mm_jjjj}
    Select Radio Button  DateFormat  dd_mm_yyyy
Select radio button jjjjmmdd
    Wait Until Page Contains Element  ${jjjjmmdd}
    Select Radio Button  DateFormat  yyyymmdd
Select radio button mmm_dd_jjjj
    Wait Until Page Contains Element  ${mmm_dd_jjjj}
    Select Radio Button  DateFormat  mmm_dd_yyyy
Select radio button mm_dd_jjjj
    Wait Until Page Contains Element  ${mm_dd_jjjj}
    Select Radio Button  DateFormat  mm_dd_yyyy
Validate CSV Indeling voor Robotframework cell title
    [Arguments]  ${value}
    Wait Until Page Contains Element  ${CsvIndeling_td_validate}
    ${text}  Get Text   ${CsvIndeling_td_validate}
    Log  ${text}
    Element Text Should Be  ${CsvIndeling_td_validate}  ${value}