*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Remplir tous les champs "Réinitialiser le mot de passe"

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123


   Click button  id :mui-3

   Wait Until Page Contains Element     id :GoToFidelitySpace
   Click button                         id :GoToFidelitySpace
   Wait Until Page Contains Element     Xpath://*[@id="__next"]/div/div[1]/div[2]/div[1]/div[1]/div
   Click element                        Xpath://*[@id="__next"]/div/div[1]/div[2]/div[1]/div[1]/div
   Click element                        Xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[1]/div[2]/div/div/div[1]
   Click button                         id : /change-password

   Wait Until Page Contains Element  id: mui-6
    input text         id: mui-6     Password@123


   input text          id :mui-7     Password@123

   Click button        Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[2]/div[4]/button

   Sleep  3s

   ${error message}=    Get Text  Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[2]/div[3]/span
    Should Be Equal As Strings    ${error message}    Les mots de passe doivent correspondre


    Close browser