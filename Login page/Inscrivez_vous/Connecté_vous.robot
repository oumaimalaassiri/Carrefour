*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Connecté vous

    Open browser         https://fid-web.lbv-fidelite-dev.label-factory.ma/signin
    Click element       Xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[2]/a

    Sleep  3S

    Click element      Xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[11]/label[2]


    sleep  4S
    close browser