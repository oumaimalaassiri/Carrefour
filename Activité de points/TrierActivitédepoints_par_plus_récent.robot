*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Trier L'Activité de points par le plus récent

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2    Password@123

   Click button   id :mui-3

   Wait Until Page Contains Element   id :GoToFidelitySpace
   Click button                       id :GoToFidelitySpace

   Wait Until Page Contains Element  Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[3]/div[1]/div/a
   Click element                     Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[3]/div[1]/div/a

   click element  Xpath://*[@id="id-select"]

   Wait Until Page Contains Element  Xpath://*[@id="menu-"]/div[3]/ul/li[1]
   Click element                     Xpath://*[@id="menu-"]/div[3]/ul/li[1]

   Close browser
