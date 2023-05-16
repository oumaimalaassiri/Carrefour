*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Authentification normal

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   sleep  3s
   input text   id : mui-2  Password@123
      sleep  3s

   Click button            id :mui-3

   Open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/home

    close browser