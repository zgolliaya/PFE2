*** Settings ***
Library    SeleniumLibrary
Resource     lacator.robot
Resource      ADD_Web_User.robot
*** Keywords ***
logout_test 
  Wait Until Element Is Visible    ${caractere}         20s
  Click Element    ${caractere} 
  Sleep    2s
  Click Element    ${logout}
  Sleep    2s 
login1_B2C_testeurQA
   Input Text       ${path_user}     ${email_testeur}
    sleep      2s 
    Input Password      ${path_password}           ${password_testeur}
    sleep      2s 
    Click Element    ${path_button_continue} 
    sleep      4s 
Dark_mode 
   Click Element    ${soleil}
   sleep  2s
   Click Element    ${dark}
   sleep  2s 
  
