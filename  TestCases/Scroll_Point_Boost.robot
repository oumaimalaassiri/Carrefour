*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Scroll les points boost

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2    Password@1234

   Click button                       id :mui-3

  Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button                       id :GoToFidelitySpace
    Wait Until Page Contains Element  Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
    Click element                     Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a



    Wait Until Page Contains Element      Xpath://*[@id="__next"]/div/div[2]/div/div[2]/article[1]
    Click element                         Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button
    Wait Until Page Contains Element      Xpath:/html/body/div[2]/div[3]/div


    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Input Text            Xpath:/html/body/div[2]/div[3]/div/div/div/div[2]/div[1]/div/span/span[8]    robot framework
    Sleep    3
    Close All Browsers
