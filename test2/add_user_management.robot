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
    Open Browser    ${URL}       Chrome      
    Maximize Browser Window
    sleep      2s 
    Input Text       //input[contains(@name, '_username')]     ${userB2C}
    sleep      2s 
    Input Password      //input[contains(@name, '_password')]          ${passwordB2C}
    sleep      2s 
    Click Element    //button[contains(., 'Continue')]
    sleep      4s 
    Click Element        //span[@class='menu-title' and text()='User Management'] 
    sleep  4s 
    

    

