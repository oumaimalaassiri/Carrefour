*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
 Choisir votre magasin principal

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-3

   Wait Until Page Contains Element    xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[1]/div[2]/button
   Click button                        xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[1]/div[2]/button

   sleep  3S

   close browser