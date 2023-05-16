*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Modifier le mot de passe "invalid password"

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

   ####Nouveau mot de passe ####
   input text          id :mui-7    oumaima99

   ####Confirmer mot de passe #####

   input text          id : mui-8  oumaima99

   Click button        Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[2]/div[4]/button

   Sleep  3s

  ## ${error message}=    Get Text   xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[2]/div[2]/span
    # Be Equal As Strings    ${error message}    Mot de passe invalide
  #  sleep   3s


   Close browser