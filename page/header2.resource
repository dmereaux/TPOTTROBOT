*** Settings ***
Library   SeleniumLibrary   #implicit_wait=5
*** Variables ***
${TITRE_ACCUEIL}   monPrestashop



*** Keywords ***
Aller a la page d'accueil
    click element    xpath=//*[@id="_desktop_logo"]//a/img
verifier titre page ${titre}
    Title Should Be   ${titre}
