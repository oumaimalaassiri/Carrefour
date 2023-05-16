*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Afficher un "Ticket de caisse"

      Open browser     https://fid-web.lbv-fidelite-dev.label-factory.ma/signin   chrome


      input text       id:mui-1       0650225690
      Sleep   2S
      input text       id :mui-2      Password@123
      Sleep   2s
      Click Button     id: mui-3
      Open browser     https://fid-web.lbv-fidelite-dev.label-factory.ma/home
      Click Button     Xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[2]/button
      Click Button     Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[2]/div[2]/table/tbody/tr[1]
