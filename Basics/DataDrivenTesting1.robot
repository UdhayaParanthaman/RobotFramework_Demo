*** Settings ***
Documentation    This file has to test the application
Library    SeleniumLibrary
Resource    ../BasicResources/login_resources1.resource
Suite Setup    open myBrowser    # before test case
Suite Teardown    closeBrowsers  # after test case
Test Template    Valid login


*** Test Cases ***    

# Invalid login    user    pass
# valid User and Empty password    admin@yourstore.com    ${EMPTY}
# valid User and Invalid password    admin@yourstore.com    aadmin

    
# Invalid User and Empty password    aadmi@yourstore.com    ${EMPTY}
# Invalid User and valid password    aadmin@yourstore.com    admin
# Invalid User and Invalid password    aadmin@yourstore.com    aadmin
    



valid user and valid password    admin@yourstore.com    admin           




*** Keywords ***    
Invalid login
    [Arguments]    ${user_name}    ${password}
    Input Username    ${user_name}
    Input LoginPassword    ${password}
    click LoginBtn
    Error message should be visible
    
Valid Login
    [Arguments]    ${user_name}    ${password}
    Input Username    ${user_name}
    Input LoginPassword    ${password}
    click LoginBtn
    Dasboard Page should be visible

    
    