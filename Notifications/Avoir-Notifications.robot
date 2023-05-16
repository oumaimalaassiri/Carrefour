*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Avoir les Notifications

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button                       id :GoToFidelitySpace

   Wait Until Page Contains Element  xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[2]/div[1]

   Click element       xpath:/html/body/div/div/div[1]/div[2]/div[1]/div[2]/div[1]

   Click element    id :mui-5
   sleep  3s


    close browser