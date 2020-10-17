*** Settings ***
Documentation  The test cases from the import forecast screen   
Resource  ../../../Resources/TreasuryCommonFunctionality.robot
Resource  ../../../Resources/PageObjects/LoginPage.robot
Resource  ../../../Resources/PageObjects/PrognosePage.robot
Resource  ../../../Resources/PageObjects/VerdelingVanBedragenPage.robot
Resource  ../../../Resources/PageObjects/ToolbaarForeground.robot
Resource  ../../../Resources/PageObjects/ProgImportOpties.robot
Resource  ../../../Resources/PageObjects/CSVIndelingPage.robot
Test Setup  Start test enviroment
Test Teardown  Finish test enviroment
*** Variables ***
${companyName}  Keylib omgeving
${userName}  anhpham
${atr}  text
${message}  Er zijn geen resultaten gevonden.
${message1st}  Eén of meerdere waarden zijn automatisch ingevuld. Controleer a.u.b. deze waarden en indien deze waarden correct zijn klik nogmaals op opslaan.
${omshrijving}  CSV Indeling voor Robotframework
${label}  Dubbele punt ( : )
${bestand}  ${CURDIR}/prognose1.csv
*** Keywords ***

*** Test Cases ***
Code Verdeling van bedragen is uniek id
   [Documentation]  Exists Code, Validate error message
   [Tags]  Functional
   LoginPage.Enter Company Name  ${companyName}
   LoginPage.Enter User Name     ${userName}
   LoginPage.Click Login
   PrognosePage.Click On CashManagement Menu
   PrognosePage.Click On Prognoses Item
   PrognosePage.Click On Plus Button
   PrognosePage.Go to Verdeling van bedragen screen
   ToolbaarForeground.Click On NIEUW Button
#   VerdelingVanBedragenPage.Enter Code Value  1
#   VerdelingVanBedragenPage.Enter Omschrijving Value  Test omgeving
#   VerdelingVanBedragenPage.Click Opslaan Button
#   VerdelingVanBedragenPage.Click back button
#   ToolbaarForeground.Click On NIEUW Button
   VerdelingVanBedragenPage.Enter Code Value  1
   VerdelingVanBedragenPage.Enter Omschrijving Value  Test omgeving 2
   VerdelingVanBedragenPage.Click Opslaan Button
   VerdelingVanBedragenPage.Validate error message Verdeling van bedrag met de code  Verdeling van bedrag met de code '1' bestaat al
Kolom tbv Code verdeling bedrag toegevoegd aan importformaat
   [Documentation]  Validate column Position distribution of amount code
   [Tags]  Functional
   LoginPage.Enter Company Name  ${companyName}
   LoginPage.Enter User Name     ${userName}
   LoginPage.Click Login
   PrognosePage.Click On CashManagement Menu
   PrognosePage.Click On Prognoses Item
   ToolbaarForeground.Click on IMPORTEREN CSV button
   #sleep  3s
   ProgImportOpties.Click on external link CSV indeling
   CSVIndelingPage.Validate column Position distribution of amount code
Toevoegen CSV-indeling met code verdeling van bedrag
   [Documentation]  Validate new distribution is saved
   [Tags]  Functional
   LoginPage.Enter Company Name  ${companyName}
   LoginPage.Enter User Name     ${userName}
   LoginPage.Click Login
   PrognosePage.Click On CashManagement Menu
   PrognosePage.Click On Prognoses Item
   ToolbaarForeground.Click on IMPORTEREN CSV button
   #sleep  3s
   ProgImportOpties.Click on external link CSV indeling
   ToolbaarForeground.Click On NIEUW Button
   CSVIndelingPage.Click on Genereer botton
   CSVIndelingPage.Enter Omshrijving  ${omshrijving}
   CSVIndelingPage.Enter Positie van bankrekening  C
   CSVIndelingPage.Enter Positie van Datum  D
   CSVIndelingPage.Enter Positie van bedrag   F
   CSVIndelingPage.Enter Positie van omschrijving  B
   CSVIndelingPage.Select Sheidingsteken  ${label}
   CSVIndelingPage.Select radio button dd_mm_jjjj
   ToolbaarForeground.Click On OPSLAAN Button
   ToolbaarForeground.Click on Back button
   CSVIndelingPage.Validate CSV Indeling voor Robotframework cell title  CSV Indeling voor Robotframework
Code verdeling Jaar en prognose scope Fixed of Dag geeft foutmelding bij import (verdeling wissen)
    [Documentation]  Confirm that forecast scope 'Fixed' and 'Dag' have no 'Jaar' distribution
    [Tags]  Functional
    LoginPage.Enter Company Name  ${companyName}
    LoginPage.Enter User Name     ${userName}
    LoginPage.Click Login
    PrognosePage.Click On CashManagement Menu
    PrognosePage.Click On Prognoses Item
    ToolbaarForeground.Click on IMPORTEREN CSV button
    ProgImportOpties.Send file  ${bestand}
    ProgImportOpties.Enter Datum van af    1-9-2020
    #ProgImportOpties.Select CSV Indeling Verdeling met vertaaltabel    
    ProgImportOpties.Select CSV Indeling  Inclusief code verdeling bedrag
    ProgImportOpties.Click on Volgende button
    

