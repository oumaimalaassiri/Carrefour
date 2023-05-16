*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Continuer vers l'espace FID


   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button  id :mui-3

     Wait Until Page Contains Element    id :GoToFidelitySpace
      Click button                       id :GoToFidelitySpace


      Close browser