*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Rendre le mot de passe visible


      Open browser         https://fid-web.lbv-fidelite-dev.label-factory.ma/signin   chrome
      input text        id:mui-1       0650225690
       sleep   2S
      input text        id :mui-2      Password@123
      sleep   2s
      Click Button                     Xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[2]/div[2]/div/div/button
      Sleep   3s

      Close browser