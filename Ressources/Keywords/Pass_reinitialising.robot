*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
*** Variables ***
${TIMEOUT}

*** Keywords ***
Password reinicialisation
    [Documentation]    This keyword allows you to reinicialis password to a user account with an initial identifier
    # Precondition for KW:
    # Se connécter a l'application E-Comerce
    # Avoir un compte utilisateur déjà créé
    # vNomUtilisateur - email address d'utilisateure    
    [Arguments]    ${vurl}    ${vBrowser}    ${vNomUtilisateure}    
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
    # Cliquer sur le lien Forgotten Password
    Click Element    ${link_forgotenPass}
    # Verification que la page est chargee
    Page Should Contain Element    ${TitleForgotenPass}
    # Saisie du email address - E-Mail Address
    Input Text    ${txt_emailL}    ${vNomUtilisateure}
    # Confirmation de l'envoi du formulaire de récupération du mot de passe
    Click Element    ${Btn_ContinueForgotPass}
    # Verification de message de confirmation de l'envoi du formulaire de récupération du mot de passe
    Page Should Contain Element    ${Confirmation_forgotenPass}
    # Fermer le navigateur
    Close Browser