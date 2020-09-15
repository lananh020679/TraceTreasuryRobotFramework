*** Settings ***
Library  SeleniumLibrary
*** Variables ***
#@{search_text}  mobile  travel  books
&{search_text}  abc=mobile  bcd=travel
*** Keywords ***
Verify Search Result
    Input Text  xpath://input[@id='gh-ac']  ${search_text.abc}
    #Press Key  //input[@id='gh-btn']  Return
    Click Element  xpath://input[@id='gh-btn']
    Sleep  3s
    Page Should Contain  results for mobile
Filter result by condition
    Mouse Over  xpath://span[@class='expand-btn__cell']//span[contains(text(),'Condition')]
    Sleep  3s
    Click Element  //span[@id='nid-xV9-4']//span[contains(@class,'expand-btn__cell')]
    Click Element  //span[@id='nid-xV9-4']//a[2]//span[1]
