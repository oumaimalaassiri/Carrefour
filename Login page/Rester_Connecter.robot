*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Réster Connecter

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123
   click element  xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[3]/label/span[1]/input

   Click button  id :mui-3

   Wait Until Page Contains Element     id :GoToFidelitySpace
   Click button                         id :GoToFidelitySpace
   Wait Until Page Contains Element     Xpath://*[@id="__next"]/div/div[1]/div[2]/div[1]/div[1]/div
   Click element                        Xpath://*[@id="__next"]/div/div[1]/div[2]/div[1]/div[1]/div
   Click element                        Xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[1]/div[2]/div/div/div[3]

