*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Réinitialiser le mot de passe

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123


   Click button  id :mui-3

   Wait Until Page Contains Element     id :GoToFidelitySpace
   Click button                         id :GoToFidelitySpace
   Wait Until Page Contains Element     Xpath://*[@id="__next"]/div/div[1]/div[2]/div[1]/div[1]/div
   Click element                        Xpath://*[@id="__next"]/div/div[1]/div[2]/div[1]/div[1]/div
   Click element                        Xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[1]/div[2]/div/div/div[1]
   Click button                         Xpath://*[@id="/change-password"]

   Wait Until Page Contains Element  id: mui-6
    input text                       id: mui-6     Password@123

   ####Nouveau mot de passe ####
   input text                         id :mui-7    Password@1234

   ####Confirmer mot de passe #####

   input text          id : mui-8  Password@1234

   Wait Until Page Contains Element  Xpath:/html/body/div/div/div[2]/div/div[2]/div[2]/div[4]/button

   Click button                       Xpath:/html/body/div/div/div[2]/div/div[2]/div[2]/div[4]/button

  Wait Until Page Contains Element     Xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[1]
  Click button                         Xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[1]

  Wait Until Page Contains Element     Xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[1]/div[2]/div/div/div[3]
  Click Button                         Xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[1]/div[2]/div/div/div[3]

   Sleep  3s
