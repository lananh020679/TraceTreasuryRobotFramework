*** Settings ***
Documentation  Validate payment tables from different payment methods 
Library  SeleniumLibrary
Library  DataDriver  ../../../TestData/SchemaEx.xlsx  sheet_name=Schema1  
#Resource  ../../../Resources/PageObjects/LoginPage.robot
Resource  ../../../Resources/PageObjects/LeningenPage.robot
Resource  ../../../Resources/CommonFunctionality.robot
Suite Setup  Start testcase
Test Setup  Start test enviroment
Test Template  Validate payment schedule
Test Teardown   Uitlog test enviroment
Suite Teardown  Finish tetscase

*** Variables ***
${companyName}  Keylib omgeving
${userName}  anhpham
*** Test Cases ***
Payment schedule with excel using  ${LeningSoort}  ${NominaleWaarde}  ${Relatie}  ${Ingangsdatum}  ${Looptijd}
*** Keywords ***
Validate payment schedule
    [Tags]  Regression
    [Arguments]  ${LeningSoort}  ${NominaleWaarde}  ${Relatie}  ${Ingangsdatum}  ${Looptijd}
    LeningenPage.Click On FinanInstrumenten Menu
    LeningenPage.Click On Leningen Item
    LeningenPage.Click On Nieuw Button
    LeningenPage.Choose a Loansort    ${LeningSoort}
    LeningenPage.Click OK Button
    LeningenPage.Genarate lening number
    LeningenPage.Enter Nominal Value    ${NominaleWaarde}
    LeningenPage.Click Relation Dropdrown
    LeningenPage.Search Relation With Relationname    ${Relatie}
    sleep  1s
    LeningenPage.Click the first relation row
    #${Ingangsdatum}=  ${Ingangsdatum}  date_format=%d-%m-%Y
    LeningenPage.Enter starting date    ${Ingangsdatum}
    LeningenPage.Click Sluiten Button
    LeningenPage.Enter Looptijd    ${Looptijd}
    LeningenPage.Click Opslaan Button
    Validate the pledge on end date visible