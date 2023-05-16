*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Inscrivez vous avec une num de telephone deja exist


    Open browser         https://fid-web.lbv-fidelite-dev.label-factory.ma/signin
    Click element        Xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[2]/a
    Wait Until Page Contains Element   id : phoneNumber
     input text                        id : phoneNumber    0650225607

      Click Button  Xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[2]/div/div/label[1]/span[1]/input
      input text    id : firstName  Oumaima
      input text    id :lastName     Laassiri
      input text    id :password     Password@1234
      input text    id : passwordConfirmation  Password@1234
      input text    id : email     Oumaimalaassiri99@gmail.com
      input text    id : mui-5    26011999


       Click element    Xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[9]/label/span[1]/input
      Click Button      id : mui-6
       sleep  30s

     ${error message}=    Get Text   css=.ErrorComponentstyle__ErrorMessage-sc-zro3u6-1
    Should Be Equal As Strings    ${error message}    phone_already_exist

  Close browser
