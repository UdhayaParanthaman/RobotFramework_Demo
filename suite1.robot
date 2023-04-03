*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary
Resource    general/general.resource
Variables    suite1.py


*** Test Cases ***
launch url and check website is loading
    go to homepage    ${yahoo}
    # Click Link    ${customerLogin}  
    # Select Window    NEW
    
# login with correct username and password
    # Input Text    ${usernamelocator}    ${usernamevalue}
    # Input Password    ${passwordlocator}    ${passwordvalue}
    # Click Button    ${loginbtn} 
    # Wait Until Page Contains Element   ${logoutbtn}         
    # Page Should Contain Element    ${logoutbtn}
    
# logout
    # Click Element    ${logoutbtn}
    # Close Browser
    
google site
    go to homepage    ${google}
    
msn site
    go to homepage    ${msn}
    
amazon site
    go to homepage    ${bing}
    
