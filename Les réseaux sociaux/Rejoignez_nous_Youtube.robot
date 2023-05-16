*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Rejoignez-nous sur : Instagram

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button            id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button    id :GoToFidelitySpace

  Wait Until Page Contains Element   Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[4]/a[3]
  Click element                        Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[4]/a[3]

    Close browser