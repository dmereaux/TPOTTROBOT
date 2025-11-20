*** Settings ***
Library  RequestsLibrary
*** Variables ***
${BASE_URL}    https://api.chucknorris.io
${ALIAS}    chucknorris
${RANDOM_JOKE_ENDPOINT}    /jokes/random

*** Keywords ***
Ouvrir session
    Create Session  ${ALIAS}   ${BASE_URL}    
Fermer session
    Delete All Sessions
Obtener une blague aleatoire
    ${response}=    GET On Session    ${ALIAS}    ${RANDOM_JOKE_ENDPOINT}   expected_status=200
    RETURN    ${response.json()}[value]
