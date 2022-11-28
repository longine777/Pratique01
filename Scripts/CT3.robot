*** Settings ***
Library    SeleniumLibrary
Variables    ../Ressoures/Locators/LocatorsCT123.py

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/
${Browser}    Chrome
${SLEEP}    2
${vUsername}    student
${vPassword}    incorrectPassword 


*** Test Cases ***
Test negative password
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Sleep    ${SLEEP}
    Input Text    ${txt_Username}    ${vUsername}     
    Input Password    ${txt_Password}    ${vPassword}
    Click Button    ${btn_Submit}
    Page Should Contain Element    ${error_message}
    Sleep    2
    Element Should Contain    ${text_PasswordInvalid}    Your password is invalid!  
    Close Browser  

*** Keywords ***