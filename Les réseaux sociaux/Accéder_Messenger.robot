*** Settings ***
Library  SeleniumLibrary
Library  ImageHorizonLibrary

*** Variables ***

*** Test Cases ***
Accéder vers Messenger

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button  id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button                       id :GoToFidelitySpace

    Wait Until Page Contains Element   xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[3]/a[3]
    Sleep  3s
    Click element          xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[3]/a[3]
    sleep  5s
    close browser
