#Element from Login Page
txt_Company_id="Company"
txt_Username_id="Username"
txt_Password_id="password-field"
btn_Login_id="login-button"
lbl_Invalidlogin_xpath="//*[@class='validation-summary-errors']//descendant::li"
#Leningen page
#********************************************************************************#
# Go to Leningen from menu
mnu_FinanInstrumenten_xpath = "//span[@class='nav-item'][contains(text(),'Financiële instrumenten')]"
mnuitem_Leningen_xpath = "//div[3]//li[3]//span[1]"
LeningPageHeader_xpath="//h1[@class='page-title' and text()='Leningen']"
# New button
btn_Nieuws_xpath = "//button[@class='primary']//i[@class='fa fa-plus-circle']"
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
td_Frirst_Number_xpath = "//tr[@class='first']/td[1]"
td_NoRelatieIn_xpath = "//*[@class='grid-message']/tr/td[contains(text(),'Er zijn geen resultaten gevonden.')]"
txt_StartDatum_xpath = "//*[@data-field='StartDate']/input"
btn_Sluiten_xpath = "//button[@class='ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all']"
txt_Looptijd_xpath = "//*[@data-field='Term']/input"
btn_Opslaan_xpath = "//span[contains(text(),'Opslaan')]"
txt_Verpanding_Ingangsdatum_Xpath="//*[@data-field='PawningDate']//child::input[@class='text-control hasDatepicker']"
txt_Verpanding_Eindatum_Xpath="//*[@data-field='PawningEndDate']//child::input[@class='text-control hasDatepicker']"
lbl_AutoIngvul_xpath = "//div[contains(@class,'-container c2')]/div[1]/div/div/child::ul"
#********************************************************************************#
