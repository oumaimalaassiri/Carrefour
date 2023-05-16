*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mot de passe oublié

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin
    click element  xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[3]/a

       Wait Until Page Contains Element    id : mui-4
       input text     id : mui-4        +212645005790
       Click element   Xpath://*[@id="mui-5"]


     Sleep  10s

     Close browser

