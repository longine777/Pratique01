*** Settings ***
Library    SeleniumLibrary
Variables    ../Ressoures/Locators/LocatorsCT123.py

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/
${Browser}    Chrome
${SLEEP}    2
${vUsername}    incorrectUser
${vPassword}    Password123


*** Test Cases ***
Test negative username
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Sleep    ${SLEEP}
    Input Text    ${txt_Username}    ${vUsername}
    Input Password    ${txt_Password}    ${vPassword}
    Click Button    ${btn_Submit}
    Wait Until Element Is Visible    ${error_message}    
    Element Should Contain    ${text_UsernameInvalid}    Your username is invalid!
    Close Browser

*** Keywords ***