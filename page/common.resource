*** Settings ***
Library   SeleniumLibrary   #implicit_wait=5
*** Variables ***
${URL}   http://www.qualifiez.fr/monPrestashop2/prestashop/index.php
${NAVIGATEUR}     GC


*** Keywords ***

Ouvrir Prestashop
   Open Browser  ${URL}  ${NAVIGATEUR}  
   Title Should Be  monPrestashop

Fermer Prestashop
  Close Browser
verifier titre page ${titre}
    Title Should Be   ${titre}
  