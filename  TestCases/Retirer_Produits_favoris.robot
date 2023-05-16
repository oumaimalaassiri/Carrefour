*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Retirer produits favoris

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Sleep  3s

   Click button  id :mui-3
    Sleep  3s

   Wait Until Page Contains Element     id :GoToFidelitySpace
   Click button                         id :GoToFidelitySpace
    Sleep  3s
   ### choisir un produit boost ###

      Wait Until Page Contains Element    Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
       Sleep  3s
      Click element                       Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
     Sleep  3s

  click button  Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[3]/figure/div[1]/button
  sleep  4s
  ### les produits favoris ###
  Click element  Xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[5]
  Sleep  4s


   Wait Until Page Contains Element   Xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[5]
    Sleep  3s
      ###retirer le produit###

    Click element  Xpath:/html/body/div/div/div[2]/div/div[2]/div[1]/article/figure/div[1]/button

    close browser