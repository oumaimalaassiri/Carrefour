*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Produits boost trie par Point croissant

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2    Password@123

   Click button                       id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button                       id :GoToFidelitySpace
    Wait Until Page Contains Element  Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
    Click element                     Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a

    Click element                     id: id-select

    Click element                     Xpath://*[@id="menu-"]/div[3]/ul/li[2]
    sleep  4s
     List Should Be Equal             xpath://*[@id="__next"]/div/div[2]/div/div[3]/div[2]/div/div[1]
    close browser
