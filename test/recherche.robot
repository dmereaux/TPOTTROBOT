*** Settings ***
Resource    ../page/common.resource
Resource    ../page/header2.resource
Resource    ../page/recherche.resource
Test Setup    Ouvrir Prestashop
Test Teardown    Fermer Prestashop
*** Test Cases ***
Test page accueil
    header2.Aller a la page d'accueil
    common.Verifier titre page ${TITRE_ACCUEIL}
   