*** Settings ***
Resource  ../../../Resources/TreasuryCommonFunctionality.robot
Resource  ../../../Resources/PageObjects/LoginPage.robot
Resource  ../../../Resources/PageObjects/LeningenPage.robot
Test Setup  Start test enviroment
Test Teardown  Finish test enviroment
*** Variables ***
${companyName}  Keylib omgeving
${userName}  anhpham
${atr}  text
${message}  Er zijn geen resultaten gevonden.
${message1st}  Eén of meerdere waarden zijn automatisch ingevuld. Controleer a.u.b. deze waarden en indien deze waarden correct zijn klik nogmaals op opslaan.
${text}  ${null}
*** Keywords ***
*** Test Cases ***
Validate succesfully open leneningen page
    [Documentation]  Validate lening page
    [Tags]  Regression
    LoginPage.Enter Company Name  ${companyName}
    LoginPage.Enter User Name     ${userName}
    LoginPage.Click Login
    LeningenPage.Click On FinanInstrumenten Menu
    LeningenPage.Click On Leningen Item
    #sleep  3s
    LeningenPage.Validate Succesfull Lening Screen Opening
Validate the relation not available
    [Documentation]  Enter en unvailable number, and validate a message
    [Tags]  Functional
    #Set Selenium Speed  3s
    LoginPage.Enter Company Name  ${companyName}
    LoginPage.Enter User Name     ${userName}
    LoginPage.Click Login
    LeningenPage.Click On FinanInstrumenten Menu
    LeningenPage.Click On Leningen Item
    LeningenPage.Click On Nieuw Button
    LeningenPage.Choice Sort Leningen
    LeningenPage.Click OK Button
    sleep  3s
    LeningenPage.Choice Lening
    LeningenPage.Genarate lening number
    LeningenPage.Enter Nominal Value  1M
    #LeningenPage.Choice a relation  10
    LeningenPage.There are no found relation  17  ${message}
The Verpanding ingangsdatum should be empty
    [Documentation]  After the first saving lening, validate that Verpanding ingangsdatum should be empty
    [Tags]  Functional
    LoginPage.Enter Company Name  ${companyName}
    LoginPage.Enter User Name     ${userName}
    LoginPage.Click Login
    LeningenPage.Click On FinanInstrumenten Menu
    LeningenPage.Click On Leningen Item
    LeningenPage.Click On Nieuw Button
    LeningenPage.Choice Sort Leningen
    LeningenPage.Click OK Button
    sleep  3s
    LeningenPage.Choice Lening
    LeningenPage.Genarate lening number
    LeningenPage.Enter Nominal Value  1M
    LeningenPage.Choice a relation  2
    LeningenPage.Enter starting date  1-1-2020
    LeningenPage.Click Sluiten Button
    LeningenPage.Enter Looptijd  20
    LeningenPage.Click Opslaan Button
    LeningenPage.Validate the pledge effective date visible  
    #LeningenPage.Validate the pledge effective date  \'\'
The Verpanding einddatum should be empty
    [Documentation]  After the first saving lening, validate that Verpanding einddatum should be empty
    [Tags]  Functional
    LoginPage.Enter Company Name  ${companyName}
    LoginPage.Enter User Name     ${userName}
    LoginPage.Click Login
    LeningenPage.Click On FinanInstrumenten Menu
    LeningenPage.Click On Leningen Item
    LeningenPage.Click On Nieuw Button
    LeningenPage.Choice Sort Leningen
    LeningenPage.Click OK Button
    sleep  3s
    LeningenPage.Choice Lening
    LeningenPage.Genarate lening number
    LeningenPage.Enter Nominal Value  1M
    LeningenPage.Choice a relation  2
    LeningenPage.Enter starting date  1-1-2020
    LeningenPage.Click Sluiten Button
    LeningenPage.Enter Looptijd  20
    LeningenPage.Click Opslaan Button
    LeningenPage.Validate the pledge on end date visible
    #LeningenPage.Validate the pledge on end date  ''
Validate the 1st message after 1st saving
    [Documentation]  After the first saving lening, validate the 1st message
    [Tags]  Regression
    LoginPage.Enter Company Name  ${companyName}
    LoginPage.Enter User Name     ${userName}
    LoginPage.Click Login
    LeningenPage.Click On FinanInstrumenten Menu
    LeningenPage.Click On Leningen Item
    LeningenPage.Click On Nieuw Button
    LeningenPage.Choice Sort Leningen
    LeningenPage.Click OK Button
    sleep  3s
    LeningenPage.Choice Lening
    LeningenPage.Genarate lening number
    LeningenPage.Enter Nominal Value  1M
    LeningenPage.Choice a relation  2
    LeningenPage.Enter starting date  1-1-2020
    LeningenPage.Click Sluiten Button
    LeningenPage.Enter Looptijd  20
    LeningenPage.Click Opslaan Button
    LeningenPage.Validate the 1st message  ${message1st}
