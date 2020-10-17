#Element from Login Page
txt_Company_id="Company"
txt_Username_id="Username"
txt_Password_id="password-field"
btn_Login_id="login-button"
lbl_Invalidlogin_xpath="//*[@class='validation-summary-errors']//descendant::li"
btn_User="//button[@class='user-button']"
span_Uitloggen="//span[contains(text(),'Uitloggen')]"
###########  toolbar foregroun #######################
button_Add_xpath="//button[@class='primary']"
btn_Nieuws_xpath = "//button[@class='primary']//i[@class='fa fa-plus-circle']"
VerdlingVBedragen_NIEUW="//span[contains(text(),'Nieuw')]"
btn_Back_xpath="//*[@class='toolbar foreground']/li/button[@class='primary']"
toolbaar_bedrijf_dropIcon="//span[@class='icon-dropdown']"
toolbaar_EXPOTEREN_CSV="//span[contains(text(),'Importeren CSV')]"
btn_Opslaan_xpath = "//span[contains(text(),'Opslaan')]"
#start datum
toolbaar_startdatum_span="//span[@class='start-value']"
toolbaar_datum_input="//*[@class='datepicker-routecontrol range']/input[@class='text-control hasDatepicker']"
#Eind datum
toolbaar_einddatum_span="//span[@class='end-value']"
toolbaar_importerenCSV="//span[contains(text(),'Importeren CSV')]"
toolbaar_importeren_Finan="//span[contains(text(),'Importeren financiële instrumenten')]"
toolbaar_exporteren="//span[contains(text(),'Exporteren')]"
toolbaar_grafiek="//i[@class='fa fa-pie-chart']"
toolbaar_annuleren="//span[contains(text(),'Annuleren')]"
########## Leningen page #######################
#********************************************************************************#
# Go to Leningen from menu
mnu_FinanInstrumenten_xpath = "//span[@class='nav-item'][contains(text(),'Financiële instrumenten')]"
mnuitem_Leningen_xpath = "//div[3]//li[3]//span[1]"
LeningPageHeader_xpath="//h1[@class='page-title' and text()='Leningen']"
# New button

# Choice een sort from lening
drd_Sortleningen_xpath = "//div[@class='editor-container']//select[@class='select-control']"
btn_OK_xpath = "//button[contains(text(),'OK')]"
# Fulling creen
drd_ChoiceSortLeningen_xpath = "//div[contains(@data-field,'LoanType')]/select"
btn_Geneer_xpath = "//button[@class='id-textbox-button']"
txt_Nomiale_Waader_Xpath = "//div[contains(@data-field,'Nominal')]/input"
# Search number from Realties
drd_Relaties_xpath = "//div[contains(@data-field,'FinancierID')]/div/span"
txt_NumberRealtie_xpath = "//*[@class='filter-row']/td[contains(@style,'top: 27px;')]/div[contains(@data-code-id,'NumericTextBox')]/input"
txt_NaamRelatie_xpath="//tr[@class='filter-row']/td[@style='top: 27px;']//input[@class='text-control' and @maxlength='40']"
td_Frirst_Number_xpath = "//tr[@class='first']/td[1]"
td_NoRelatieIn_xpath = "//*[@class='grid-message']/tr/td[contains(text(),'Er zijn geen resultaten gevonden.')]"
txt_StartDatum_xpath = "//*[@data-field='StartDate']/input"
btn_Sluiten_xpath = "//button[@class='ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all']"
txt_Looptijd_xpath = "//*[@data-field='Term']/input"
tr_1stRow="//*[@data-entity='Markarian.Libraries.TreasuryBL.Relation']//tr[@class='first']"
txt_Verpanding_Ingangsdatum_Xpath="//*[@data-field='PawningDate']//child::input[@class='text-control hasDatepicker']"
txt_Verpanding_Eindatum_Xpath="//*[@data-field='PawningEndDate']//child::input[@class='text-control hasDatepicker']"
lbl_AutoIngvul_xpath = "//div[contains(@class,'-container c2')]/div[1]/div/div/child::ul"
#********************************************************************************#
###########################Pognose Page#####################################
mnu_CashManagement_xpath="//span[@class='nav-item'][contains(text(),'Cash management')]"
mnuitem_Prognoses_xpath="//*[@class='mainUl']/li[3]"
#button_Add_xpath="//button[@class='primary']"
#1. Nieuwe Prognose scherm#
# Kasstroom Component #
NieuwePrognose_KasstroomComponen="//*[@data-field='CashflowComponentId']/div/select"
NieuwePrognose_KassComponentNr="//*[@class='filter-row']/td[contains(@style,'top: 27px;')]/div[contains(@data-code-id,'NumericTextBox')]/input"
NieuwePrognose_KassComponentOmschrijving="//*[@class='filter-row']/td[contains(@style,'top: 27px;')]/div[contains(@data-code-id,'TextBox')]/input"
NieuwePrognose_1stGezochtComponent="//tr[@class='first']/td[1]"
# Pognose Datum #
NieuwePrognose_PrognoseDatum="//input[@class='text-control hasDatepicker']"
#Prognose Bankrekening#
NieuwePrognose_PrognoseBankrekening="//*[@data-field='BankAccountId']/div/select"
NieuwePrognose_Rekeningnumber="//div[contains(@data-entity,'BankAccount')]/div[@class='scroll-container']//div[@data-code-id='NumericTextBox']/input"
NieuwePrognose_1stBankrekening="//tr[@class='first']/td[1]"
NieuwePrognose_PrognoseOmschrijving="//*[@data-field='Description']/input"
#abc="//div[@class='editor-category']/div/div[4]/div/input"
NieuwePrognose_Bedrag="//*[@data-field='Amount']/input"
NieuwePrognose_PrognoseScope="//*[@data-field='ForecastScope']/select"
NieuwePrognose_PrognoseScope_Dag="//*[@data-field='ForecastScope']/select/option[@value='Day']"
NieuwePrognose_PrognoseScope_Maand="//*[@data-field='ForecastScope']/select/option[@value='Month']"
NieuwePrognose_PrognoseScope_Jaar="//*[@data-field='ForecastScope']/select/option[@value='Year']"
# Nieuwe Prognose: Verdeling van bedrag#
NieuwePrognose_VerdelingVBedrag="//*[@data-field='CashflowYearDistributionId']/div/select"
NieuwePrognose_OpenOnderhoudsPagina="//*[contains(@data-url,'/Cashflow/CashflowYearDistribution/Overview')]"
NieuwePrognose_DAEB="//*[@data-field='Sgei']/select"
NieuwePrognose_RedenVWijziging="//*[@data-field='ChangeReason']/textarea"
##### Verdeling van bedragen #####

NieuweVerdlingVBedrag_Code="//*[@data-field='Code']/input"
NieuweVerdlingVBedrag_Omschrijving="//*[@data-field='Description']/input"
NieuweVerdlingVBedrag_Error="//*[@class='error-container']/ul/li[contains(text(),'Verdeling van bedrag met de code')]"

###sub Prognose Exporteren screen#######
SubExp_Bestandsformaat="//select[@id='export-format']"
SubExp_ImExplayout="//select[@id='export-layout_csv']"
SubExp_VoegExtinformatie="//input[@id='export-addendum']"
SubExp_ExpButton="//button[contains(text(),'Exporteren')]"
SubExp_Annuleren="//div[contains(@class,'export-dialog ui-dialog-buttons')]//button[contains(text(),'Annuleren')]"
#### Prognose import opties screen ######
ProOpties_CSVIndeling_Maintenace="//button[@data-url='/Cashflow/CashflowForecastImportFormatDefinitions/Overview']"
ProOpties_Bestand="//div[@class='editor-control file-upload']//input"
ProOpties_Datumvanaf="//div[@data-field='StartDate']/input"
ProOpties_Datumvanaf_Type="//select[@class='select-control period-selector']"
ProOpties_Datumvanaf_Datum="//div[@class='editor-row start-date-group']/input"
ProOpties_Datumvanaf_Ok="//button[@class='mainframe-save']"
ProOpties_CSVIndeling="//div[@data-field='ImportFormatDefinitionId']/select"
ProOpties_CSVIndeling_Verdeling_met_vertaaltabel="//div[@data-field='ImportFormatDefinitionId']/select/option[contains(text(),'Verdeling met vertaaltabel')]"
ProOpties_Verschuivendata="//div[@data-field='AdjustDates']/select"
ProOpties_Opmaakbedragen="//div[@data-field='SizeOfAmount']/select"
ProOpties_Verwijdermethode="//div[@data-field='CashflowForecastDeleteBeforeImport']/select"
ProOpties_StandaardBankrekening="//div[@data-field='DefaultBankAccountNumber']//span[@class='label']"
ProOpties_ProgVoorstelleen_1stRow="//tr[@class='first active selected']/td[contains(text(),'hebben geen jaar verdeling')]"
ProOpties_ProgVoorstelleen_2ndRow="//tr[@class='even']/td[contains(text(),'hebben geen jaar verdeling')]"
#=>cashflow-workflow-buttons
ProOpties_Maakstandaard="//div[@class='cashflow-workflow-buttons']/button[contains(text(),'Maak standaard')]"
ProOpties_Terug="//div[@class='cashflow-workflow-buttons']/button[contains(text(),'Volgende')]"
ProOpties_Volgende="//button[contains(text(),'Volgende')]"

### CSV_indeling###
Positie_van_prognose_scope_column="//th[contains(text(),'Positie van prognose scope')]"
CsvIndeling_Genereer="//button[contains(text(),'Genereer')]"
CsvIndeling_Omschrijving="//div[@data-field='Description']/input"
CsvIndeling_PositieBank="//*[@data-field='SequenceOfBankAccount']/input"
CsvIndeling_PositieDatum="//*[@data-field='SequenceOfDate']/input"
CsvIndeling_PositieBedrag="//*[@data-field='SequenceOfAmount']/input"
CsvIndeling_PositieOmschrijving="//*[@data-field='SequenceOfDescription']/input"
CsvIndeling_Scheidingsteken="//select[@class='select-control']"
dd_mmm_jjjj="//label[contains(text(),'dd-mmm-jjjj')]//input[@name='DateFormat']"
dd_mm_jjjj="//label[contains(text(),'dd-mm-jjjj')]//input[@name='DateFormat']"
jjjjmmdd="//label[contains(text(),'jjjjmmdd')]//input[@name='DateFormat']"
mmm_dd_jjjj="//label[contains(text(),'mmm-dd-jjjj')]//input[@name='DateFormat']"
mm_dd_jjjj="//label/input[@value='mm_dd_yyyy']"
CsvIndeling_td_validate="//td[contains(text(),'CSV Indeling voor Robotframework')]"




