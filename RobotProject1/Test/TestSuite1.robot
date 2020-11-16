*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup 
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup         Log    I am inside Test Setup
Test Teardown     Log    I am inside Test Teardown 

Default Tags    sanity             

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World..   
    
MySecondTest
    [Tags]    example
    Log    I am inside 2nd Test
    Set Tags    regression1  
    Remove Tags   regression1  
    
MyThirdTest
    Log    I am inside 3rd Test 
     
    
# FirstSeleniumTest
           # Open Browser    https://google.com    chrome  
           # Set Browser Implicit Wait    5
           # Input Text      name=q                Automation step by step
           # Click Button    name=btnK    
           # Sleep    2         
           # Close Browser
           # Log    Test Completed 
           
# SampleloginTest
    # [Documentation]    This is a Sample login Test
    # Open Browser        ${URL}    Chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element       id=welcome
    # Click Element       link=Logout
    # Close Browser
    # Log                 Test Completed 
    # Log                 This test was exeuted by %{USERNAME} on %{os}
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123 
&{LOGINDATA}    username=Admin    password=admin123     

*** Keywords ***
LoginKW
    Input Text          id=txtUsername    @{CREDENTIALS}[0]
    Input Password      id=txtPassword    &{LOGINDATA}[password]
    Click Button        id=btnLogin 
                
       