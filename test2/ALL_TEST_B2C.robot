*** Settings ***
Library    SeleniumLibrary
Resource    add_user_role.robot
Resource    login_B2C.robot
Resource     lacator.robot
Resource     ADD_Web_User.robot
Resource     logout_login_testeur.robot
*** Test Cases ***
B2C_test_cases
  login1B2C_Administrateur
  ADD_user_R
  Add_Web_U
  logout_test
  login1_B2C_testeurQA
  Dark_mode 
