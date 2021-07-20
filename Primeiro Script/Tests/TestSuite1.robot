*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Documentation    Test Edge Browser
Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log     I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...
    
MySecondTest
    Log    I am inside 2nd test
    
MyThirdTest
    Log    I am inside 3rd test
    
#FirstSeleniumTest
 #   Open Browser    https://google.com    edge
 #   Set Browser Implicit Wait    20
  #  Input Text      name=q                asdf123
  #  Press Keys      name=q    ENTER
  #  #Click Button    name=btnK
  #  Sleep    2
  #  Close Browser
   # Log    Test Completed
    #Log    This test was executed by %{username} on %{os}
    
#SampleLoginTest
  #  [Documentation]    This is a sample login test    
  # Open Browser       ${URL}    edge
  #  Set Browser Implicit Wait    20
   # LoginQA
  #  Click Element      id=welcome
   # Click Element      link=Logout
  #  Sleep    2
  #  Close Browser
  #  Log    Test completed  
   # Log    This test was executed by %{username} QA on %{os}
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${CREDENTIALS}    Admin    admin123
${LGOINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginQA
    Input Text         id=txtUsername    Admin
    Input Password     id=txtPassword    admin123
    Click Button       id=btnLogin