*** Settings ***
Documentation     This file is to test the WebApplication
Library    SeleniumLibrary    

*** Test Cases ***
ScrollingPage
    Open Browser    https://www.nationsonline.org/oneworld/countries_of_the_world.htm    Chrome
    Maximize Browser Window
    
    # till reach a pixel number
    Execute Javascript    window.scrollTo(0,2000)
    

    # till find an element in a page
    Scroll Element Into View    //div[@id='IND']
    
    
    # till reach the bottom
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)

    # document.body.scrollHeight -> will goto bottom of the page
    # -document.body.scrollHeight -> will goto Top of the Page
      
    Sleep    5s    
    Close Browser