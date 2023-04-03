*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary

*** variables ***
${variable_name}    Hello client
@{name}    Hello Client    If you have any queries    Letme Know  
     

*** Test Cases ***
Variable Demonstartion
    # Retrieve the Variable 
    Log    ${variable_name}
    
Variable Demonstration Lists 
    Log    ${name}[0]
    Log    ${name}[1]
  
    