*** Settings ***
Library   SeleniumLibrary   #implicit_wait=5
*** Variables ***
${TITRE_ACCUEIL}   monPrestashop
${LOC_LOGO}   xpath=//*[@id="_desktop_logo"]//a/img



*** Keywords ***
Aller a la page d'accueil
    Wait Until Element Is Enabled   ${LOC_LOGO}
    click element    ${LOC_LOGO}
verifier titre page ${titre}
    Title Should Be   ${titre}
