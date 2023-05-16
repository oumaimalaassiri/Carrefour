*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Trier L'Activité de points par date

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-3

   Wait Until Page Contains Element    id :GoToFidelitySpace
   Click button   id :GoToFidelitySpace
   Wait Until Page Contains Element   Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[3]/div[2]/table/thead/tr/th[2]
   Execute JavaScript    window.scrollTo(0, 1500);

   Click element  xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[3]/div[2]/table/thead/tr/th[2]
   Sleep  5s
   Click element  xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[3]/div[2]/table/thead/tr/th[2]
   Sleep  5s
   Click element  xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[3]/div[2]/table/thead/tr/th[2]
   Sleep  5s
   Click element  xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[3]/div[2]/table/thead/tr/th[2]

   Sleep  5s

   close browser
