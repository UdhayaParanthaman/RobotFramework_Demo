*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.jrecommerce.com/demo.php#demo

*** Keywords ***    
go to homepage
    [Arguments]    ${value}
    Create Webdriver    Chrome    
    Maximize Browser Window
    Go To    ${value}