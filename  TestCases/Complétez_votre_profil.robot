*** Settings ***
Library  SeleniumLibrary
*** Variables ***


*** Test Cases ***
Complétez votre profil


   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button  id :mui-3

     Wait Until Page Contains Element    id :GoToFidelitySpace
      Click button                       id :GoToFidelitySpace

      Wait Until Page Contains Element   xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[1]/div[2]/div/a

        Click element                    xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[1]/div[2]/div/a

       Wait Until Page Contains Element    id: address
      input text                      id: address    Narjiss
      Select From List by Label       id=mui-6  Option 2