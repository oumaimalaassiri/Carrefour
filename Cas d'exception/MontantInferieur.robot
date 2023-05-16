*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Sélectionner un montant inférieur à 50
   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button   id :GoToFidelitySpace

   Wait Until Page Contains Element    Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/div[4]/button
   Sleep  3s
   Click element  Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/div[4]/button
   sleep  3s

   input text    id : points   40
   sleep   3s
      ${error message}=    Get Text  xpath://*[@id="__next"]/div/div[2]/div/div/div/div[2]/form/div[1]/span
    Should Be Equal As Strings    ${error message}    Veuillez sélectionner un montant supérieur ou égal à 50 points
    sleep   3s
  close browser