*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Accéder à la page "Promotions"

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button   id :GoToFidelitySpace

    Wait Until Page Contains Element  Xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[2]
    Click element                     xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[2]

    sleep  5s
    close browser
