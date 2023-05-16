*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Me connecter pour la première fois

    Open browser         https://fid-web.lbv-fidelite-dev.label-factory.ma/signin
    Click element        xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[1]/button
    Wait Until Page Contains Element   id : mui-4
    input text    id : mui-4    0645005790
    Click button  id : mui-5
    input text    Xpath:/html/body/div/div/div/div[2]/div[2]/div/div[1]

 close browser