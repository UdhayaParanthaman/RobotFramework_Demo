*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary

*** variables ***
${url} =   https://automationplayground.com/crm/

*** Test Cases ***
Launch the url and check page is loading
    #Initialize selenium speed
    Set Selenium Speed    .2s
    Set Selenium Timeout    10s  
    
    log    starting the test cases!  
    Open Browser    ${url}    Chrome       
    Maximize Browser Window  
    log    ${url}   

    # href element
    Click Element    SignIn 
    # element
    #Click Element    //a[@id='SignIn'] 
    
    Page Should Contain    Login  
    
    Input Text    email-id    admin@robotframeworktutorial.com 
    Input Password    password    qwe
    Click Button    Submit     
#    Page Should Contain    Our Happy Customers
    Page Should Contain Link    //a[@id='new-customer']        
        
    sleep    3s 
    Close Window
    
