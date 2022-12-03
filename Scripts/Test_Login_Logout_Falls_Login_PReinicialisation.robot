*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/Keywords/Login.robot
Resource    ../Ressources/Keywords/Logout.robot
Resource    ../Ressources/Keywords/Login_falls.robot
Resource    ../Ressources/Keywords/Pass_reinitialising.robot

*** Variables ***
${vurl}    http://tutorialsninja.com/demo/index.php?route=common/home
${vBrowser}    gc
${vNomUtilisateure}    JSmith@yahoo.com
${vPassword}    JSmith2022
${vPasswordF}
${TitleAccuiel}    Tableau de bord
${TIMEOUT}    5

*** Test Cases ***
Test
    Login    ${vurl}    ${vBrowser}    ${vNomUtilisateure}    ${vPassword}
    Logout
    Falls Login    ${vurl}    ${vBrowser}    ${vNomUtilisateure}    ${vPasswordF}
    Password reinicialisation    ${vurl}    ${vBrowser}    ${vNomUtilisateure}
    