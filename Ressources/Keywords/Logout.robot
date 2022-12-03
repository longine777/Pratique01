*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
*** Variables ***
${TIMEOUT}

*** Keywords ***
Logout
    [Documentation]    This keyword allows you to deconnect from user account with an initial identifier
    # Precondition for KW:
    # Se connécter a l'application E-Comerce
    # Avoir un compte utilisateur déjà créé
    # Avoir connécté avec un compt 
    # vNomUtilisateur - email address d'utilisateure
    # vPassword - mot de passe d'utilisateure
    # Defiintion de timeout
    Set Selenium Timeout    ${TIMEOUT}
    # Cliquer sur le lien My Account
    Click Element    ${Btn_MyAcount}
    # Selectionné option Logout
    Click Element    ${LLogout}
    # Verifier deconnection du compte utilisateur
    Element Should Be Visible    ${TitleLogout}
    # Arriver a la page principale
    Click Element    ${Btn_ContinueLogout}
    # Fermer le navigateur
    Close Browser