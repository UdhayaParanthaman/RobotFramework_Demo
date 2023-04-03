*** Settings ***
Documentation    This file has to test the Login credentials with datasets
Library    SeleniumLibrary    


*** Variables ***
${Login_url}    https://admin-demo.nopcommerce.com/
${Browser}    Chrome

${loginBtnLocator}    //button[@type='submit']


*** Keywords ***
open myBrowser
    Open Browser    ${Login_url}    ${Browser}
    
closeBrowsers
    Close All Browsers 
    
Input Username
    [Arguments]    ${user_name}
    Input Text    id=Email    ${user_name} 
    
Input LoginPassword
    [Arguments]    ${password}
    Input Password    id=Password    ${password}
    
click LoginBtn
    Click Element    ${loginBtnLocator}
    
click LogoutLink
    Click Link    Logout 
    
Error message should be visible
    Page Should Contain    Welcome, please sign in!
    
Dasboard Page should be visible
    Page Should Contain    Dashboard  
                           
    

# *** Test Cases ***
# verify LoginCredentials
    # open myBrowser
    # Maximize Browser Window
    # closeBrowsers
