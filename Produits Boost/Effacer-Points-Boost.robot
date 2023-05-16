*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Effacer les points du produits boost

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2    Password@123

   Click button                         id :mui-3

     Wait Until Page Contains Element   id :GoToFidelitySpace
     Click button                       id :GoToFidelitySpace
     Wait Until Page Contains Element   Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
     Click element                      Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a

     Wait Until Page Contains Element      Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[1]
     Click element                         Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button
     Wait Until Page Contains Element      Xpath:/html/body/div[2]/div[3]/div
     Click element                         Xpath:/html/body/div[2]/div[3]/div/div/div/div[1]
     Sleep  3s

     Close browser