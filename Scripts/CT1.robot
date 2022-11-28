*** Settings ***
Library    SeleniumLibrary
Variables    ../Ressoures/Locators/LocatorsCT123.py

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/
${Browser}    Chrome
${SLEEP}    2
${vUsername}    student
${vPassword}    Password123


*** Test Cases ***

Test positive Login
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Sleep    ${SLEEP}
    Input Text    ${txt_Username}    ${vUsername}
    Input Password    ${txt_Password}    ${vPassword}
    Click Button    ${btn_Submit}    
    Location Should Contain    practicetestautomation.com/logged-in-successfully/
    Sleep    ${SLEEP}
    Element Should Contain    ${lblTitle2}    Congratulations student. You successfully logged in!
    Element Should Be Visible    ${btnLogout}
    Close Browser

*** Keywords ***