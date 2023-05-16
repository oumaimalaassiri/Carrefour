*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Formulaire de contact

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text     id : mui-1   0650225690
   input text     id : mui-2    Password@123

   Click button   id :mui-3

   Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button                        id :GoToFidelitySpace


    Wait Until Page Contains Element  Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[3]/a[4]

    Click element  xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[3]/a[4]
    sleep  3s


      input text    id :  ield_lwuxe
      input text    id :  field_uuinm
      input text    id :  field_u9068
      input text
      input text

      close browser
