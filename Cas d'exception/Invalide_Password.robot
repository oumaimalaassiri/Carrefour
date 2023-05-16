*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Invalid Password

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text    id : mui-1    0650225690
   input text    id : mui-2    1234
   click button  id : mui-3

   Wait Until Page Contains Element    xpath://*[@id="__next"]/div[2]/div/div/div/div/div/span
   Sleep  3s
   Click element  xpath://*[@id="__next"]/div[2]/div/div/div/div/div/span
   sleep  3s


   ${error message}=    Get Text   xpath://*[@id="__next"]/div[2]/div/div/div/div/div/span
    Should Be Equal As Strings    ${error message}    invalid_grant
    sleep   3s

  Close browser