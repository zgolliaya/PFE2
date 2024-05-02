*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}          https://pumc-b2c-backoffice.asteroidea.co/login 
${userB2C}        admin
${passwordB2C}    admin
*** Test Cases ***
loginB2C
  login_toB2C
*** Keywords ***
login_toB2C
    ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Call Method  ${options}  add_argument  --no-sandbox
    Call Method  ${options}  add_argument  --headless
    Open Browser  ${URL}    Chrome     options=${options} 
    Maximize Browser Window
    sleep      2s 
    Input Text       //input[contains(@name, '_username')]     ${userB2C}
    sleep      2s 
    Input Password      //input[contains(@name, '_password')]          ${passwordB2C}
    sleep      2s 
    Click Element    //button[contains(., 'Continue')]
    sleep      4s 
   // Wait Until Element Is Visible     //span[@class='menu-title' and text()='User Management'] 
    //Click Element        //span[@class='menu-title' and text()='User Management'] 
    //sleep  4s 
    

    

