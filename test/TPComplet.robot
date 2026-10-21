*** Settings ***
Resource    ../page/TPComplet.resource
Test Setup    Ouvrir TPComplet
*** Test Cases ***
Test recherche avec saisie
    TPComplet.Saisir recherche jean
    TPComplet.verifier titre page RÃ©sultats de la recherche 