*** Settings ***
Library   SeleniumLibrary   #implicit_wait=5
*** Variables ***
${URL}   http://localhost:8080/TPOTT2026-1.0-SNAPSHOT/home
${NAVIGATEUR}     GC
${LOC_SAISIE}  //*[@id="item"]
${LOC_BOUTON}  //form/button
${LOC_TITRE}  //h2

*** Keywords ***
Ouvrir TPComplet
   Open Browser  ${URL}  ${NAVIGATEUR}     
Saisir recherche ${saisie}
    Input Text  ${LOC_SAISIE}  ${saisie}
    Click Element  ${LOC_BOUTON}
verifier titre page ${titre}
    Element Text Should Be  ${LOC_TITRE}  ${titre}