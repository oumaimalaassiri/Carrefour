*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Transfert de point a un autre Compte

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2  Password@123

   Click button   id :mui-


   
