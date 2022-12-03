*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
*** Variables ***
${TIMEOUT}

*** Keywords ***
Login
    [Documentation]    This keyword allows you to connect to a user account with an initial identifier
    # Precondition for KW:
    # Se connécter a l'application E-Comerce
    # Avoir un compte utilisateur déjà créé
    # vNomUtilisateur - email address d'utilisateure
    # vPassword - mot de passe d'utilisateure
    [Arguments]    ${vurl}    ${vBrowser}    ${vNomUtilisateure}    ${vPassword}
    # Defiintion de timeout
    Set Selenium Timeout    ${TIMEOUT}
    # Ouverture de navigateur en URL teste et de type selectione. Ouverture en lange francaise
    Open Browser    ${vurl}    ${vBrowser}
    # Maximisation de la fenetre du navigateur
    Maximize Browser Window
    # Verification que la page est chargee
    Wait Until Element Is Visible    ${TitleECommerce}
    # Cliquer sur le lien My Account
    Click Element    ${Btn_MyAcount}
    # Selectionné option Login
    Click Element    ${LLogin}
    # Verification que la page est chargee correct
    Wait Until Element Is Visible    ${TitleReturningCoustomer}
    # Saisie du login - Adress email
    Input text    ${txt_emailL}    ${vNomUtilisateure}
    # Saisie du mot de passe    
    Input Password    ${txt_passwordL}    ${vPassword}
    # Login en clickant sur le bouton Login
    Click Button   ${btn_Login}
    # Verification que la page corresponde a votre profil
    Location Should Contain    ${TitleMyAccount}