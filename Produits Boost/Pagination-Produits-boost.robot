*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Keywords ***
Get Total Number Of Pages
    ${total_pages} =    Get Text    Xpath://*[@id="__next"]/div/div[2]/div/div[5]/div/nav/ul/li[6]/button
    [Return]    ${total_pages}

    Click On Next Page

    Click Element                        xpath://*[@id="__next"]/div/div[2]/div/div[5]/div
    Wait Until Page Contains Element    xpath://*[@id="__next"]/div/div[2]/div/div[5]/div

*** Test Cases ***
Pagination produits boost

   open browser   https://fid-web.lbv-fidelite-dev.label-factory.ma/signin

   input text   id : mui-1    0650225690
   input text   id : mui-2    Password@123

   Click button                         id :mui-3

    Wait Until Page Contains Element    id :GoToFidelitySpace
    Click button                        id :GoToFidelitySpace
    Wait Until Page Contains Element    Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
    Click element                       Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a


    Wait Until Page Contains Element   Xpath://*[@id="__next"]/div/div[2]/div/div[5]/div
    ${total_pages} =    Get Total Number Of Pages
    FOR    ${page}    IN RANGE    1    ${total_pages}+1
        ${result} =    Run Keyword And Return Status    Page Should Contain Element   Xpath://*[@id="__next"]/div/div[2]/div/div[5]/div
        Run Keyword If    '${result}' == 'False' and ${page} < ${total_pages}    Click On Next Page
        Run Keyword If    '${result}' == 'True' or ${page} == ${total_pages}    Log    All data on this page is verified
        Exit For Loop If    ${page} == ${PAGE_LIMIT}
    END

    Close browser