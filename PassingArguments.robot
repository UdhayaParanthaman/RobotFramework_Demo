*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary

*** Variable ***
${url}    https://kumaran.com/
${Browser}    Chrome


*** Test Cases ***
User can search for products
    Begin Web Test    https://kumaran.com/    Chrome
    Begin Web Test    https://google.com/    Chrome

*** Keywords ***    
Begin Web Test
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser} 
    Maximize Browser Window
    Sleep    5s    
    Close Browser       
    
    