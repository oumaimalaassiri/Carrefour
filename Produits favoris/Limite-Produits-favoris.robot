*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Produits favoris

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@1234


   Click button  id :mui-3

   Wait Until Page Contains Element     id :GoToFidelitySpace
   Click button                         id :GoToFidelitySpace
   ### choisir  25 produit boost ###

   #1#
    Wait Until Page Contains Element    Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[1]/figure/div[1]/button
    Click element                       Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[1]/figure/div[1]/button
   #2#
    Wait Until Page Contains Element     Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[2]/figure/div[1]/button
    Click element                        Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[1]/figure/div[1]/button
  #3#

    click button  Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[3]/figure/div[1]/button
    sleep  4s

  ### les produits favoris ###
  Click element  Xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[5]
  Sleep  4s





   close browser