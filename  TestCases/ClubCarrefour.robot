*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
 Club Carrefour

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-3

   Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button   id :GoToFidelitySpace

   Wait Until Page Contains Element       Xpath://*[@id="__next"]/div/div[1]/div[2]/div[2]/button[2]
   Click Button                           Xpath://*[@id="__next"]/div/div[1]/div[2]/div[2]/button[2]


   Close browser