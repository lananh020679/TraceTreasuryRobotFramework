*** Settings ***
Library  SeleniumLibrary
Variables    ../../Resources/Locators.py
*** Keywords ***
Click on external link CSV indeling
    Wait Until Page Contains Element    ${ProOpties_CSVIndeling_Maintenace}
    Click element    ${ProOpties_CSVIndeling_Maintenace}
Send file
    [Arguments]   ${bestand}
    Wait Until Page Contains Element  ${ProOpties_Bestand}
    Choose File  ${ProOpties_Bestand}  ${bestand}
Enter Datum van af  
    [Arguments]  ${Datum}
    Click element  ${ProOpties_Datumvanaf}
    Wait Until Page Contains Element  ${ProOpties_Datumvanaf_Type}
    Select from list by label  ${ProOpties_Datumvanaf_Type}  Fixed
    Wait Until Page Contains Element  ${ProOpties_Datumvanaf_Datum}
    Input Text  ${ProOpties_Datumvanaf_Datum}  ${Datum}
    Wait Until Page Contains Element  ${ProOpties_Datumvanaf_Ok}
    Click Element  ${ProOpties_Datumvanaf_Ok}
Select CSV Indeling Verdeling met vertaaltabel
    Wait Until Page Contains Element  ${ProOpties_CSVIndeling}
    Click element  ${ProOpties_CSVIndeling}
    Wait Until Page Contains Element  ${ProOpties_CSVIndeling_Verdeling_met_vertaaltabel}
    Click Element  ${ProOpties_CSVIndeling_Verdeling_met_vertaaltabel}
    #Select from list by label  ${ProOpties_CSVIndeling}  ${value}
Select Verschuiven data
    [Arguments]  ${Data}
    Select from list by label  ${ProOpties_Verschuivendata}  ${Data}
Click on Volgende button
    Wait Until Page Contains Element  ${ProOpties_Volgende}
    Click element  ${ProOpties_Volgende}
Select CSV Indeling 
    [Arguments]  ${value}
    ${temp}=  Catenate  option[contains(text(),'${value}')]
    ${s}=  Catenate  ${ProOpties_CSVIndeling}/${temp}
    Wait Until Page Contains Element  ${ProOpties_CSVIndeling}
    Click element  ${ProOpties_CSVIndeling}
    #Wait Until Page Contains Element  ${s}
    Click Element  ${s}
    #Select from list by label  ${ProOpties_CSVIndeling}  ${value}
The message should be 