*** Settings ***
Resource    ../rest/chucknorris.resource
Test Setup    Ouvrir session
Test Teardown    Fermer session
*** Test Cases ***
Test obtenir une blague aleatoire
    ${blague}=    Obtener une blague aleatoire
    Log    La blague est : ${blague}