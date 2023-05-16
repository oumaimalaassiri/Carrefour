*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Avoir notifications

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button   id :GoToFidelitySpace

   Wait Until Page Contains Element  xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button[1]
   Sleep  3s
   Click element  xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button[1]
   sleep  3s


  close browser