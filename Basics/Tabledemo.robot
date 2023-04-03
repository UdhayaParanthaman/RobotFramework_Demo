*** Settings ***
Documentation    This file is to test the Html Table
Library    SeleniumLibrary 
   

*** Test Cases ***
TableValidation
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    
    Scroll Element Into View    //h2[normalize-space()='HTML Table']
    
    ${rows} =  Get Element Count    //*[@id="HTML1"]/div[1]/table/tbody/tr
    ${columns} =  Get Element Count    //*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    
    Log To Console    ${rows}   
    Log To Console    ${columns}  
    
    ${data}=    Get Text    //*[@id="HTML1"]/div[1]/table/tbody/tr[6]/td[1] 
    Log To Console    ${data}  
    
    Table Should Contain    //table[@name='BookTable']    Author    
    Table Column Should Contain    //table[@name='BookTable']    3    Selenium
    Table Row Should Contain    //table[@name='BookTable']    5    Mukesh	            
    Table Cell Should Contain    //table[@name='BookTable']    5    4    3000
    Table Header Should Contain    //table[@name='BookTable']    Author
    
    Sleep    5s
    Close All Browsers        