*** Settings ***
Library    SeleniumLibrary
Resource   lacator.robot
*** Keywords ***
login1B2C_Administrateur
    Open Browser    ${URL}       Chrome      
    Maximize Browser Window
    sleep      2s 
    Input Text       ${path_user}      ${userB2C}
    sleep      2s 
    Input Password      ${path_password}         ${passwordB2C}
    sleep      2s 
    Click Element    ${path_button_continue} 
    sleep      4s 
   
