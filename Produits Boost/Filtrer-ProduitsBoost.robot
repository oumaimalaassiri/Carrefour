*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Filter Produits Boost


   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2    Password@123

   Click button                       id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button                       id :GoToFidelitySpace
    Wait Until Page Contains Element  Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
    Click element                     Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a

   Wait Until Page Contains Element  xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button
    Click button  xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button

    ### choisir une categorie###
     Click element   Xpath:/html/body/div[2]/div[3]/div/div/div/div[2]/div[2]/div/div/div[8]
     Click element   Xpath:/html/body/div[2]/div[3]/div/div/div/div[2]/div[3]/button[1]/div



    Wait Until Page Contains Element      Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[1]
    Click element                         Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button
    Wait Until Page Contains Element      Xpath:/html/body/div[2]/div[3]/div
    sleep  3s
    Click element                         Xpath:/html/body/div[2]/div[3]/div/div/div/div[2]/div[3]/button[1]
    sleep  3s


    close browser