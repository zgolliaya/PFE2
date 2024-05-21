*** Settings ***
Library    SeleniumLibrary

Resource    login_B2C.robot
Resource     lacator.robot
*** Keywords ***
ADD_user_R
    Wait Until Element Is Visible     ${path_user_management} 
    Click Element                     ${path_user_management}
    Sleep                             4s 
    Wait Until Element Is Visible     ${path_role}
    Click Element                     ${path_role}
    Sleep                             2s
    Wait Until Element Is Visible     ${path_add_role_button}
    Click Element                     ${path_add_role_button}
    Sleep                             2s
    Input Text                        ${role_name}     TesteurQA
    Sleep                             2s
    Input Text                        ${role_name_arabe}       مختبرا
    Sleep                             2s
    Click Element          ${check_deshbord}
    Sleep                  1s
    Click Element          ${check_app_user}
    Sleep                  1s
    Click Element          ${check_user_management1}
    Sleep                  1s
    Click Element          ${check_user_management2}
    Sleep                  1s
    Click Element          ${check_user_management3}
    Sleep                  1s
    Click Element          ${check_user_management4}
    Sleep                  1s
    Click Element          ${check_user_management5}
    Sleep                  1s
    Click Element         ${carpark_edit}
    Sleep                  1s
   Click Element          ${carpark_view}
   Sleep                  1s 
   Click Element         ${carpark_delete}
   Sleep                  1s
   Click Element         ${carpark_enable}
   sleep                 1s 
   click Element         ${carpark_shift}
   Sleep                 1s
   Click Element         ${shifts}
   Sleep    1s
   Scroll Element Into View    ${pay_as_you_go}
   Click Element         ${pay_as_you_go} 
   Sleep    1s
   Click Element       ${pre_booking}
   Sleep    1s
   Click Element      ${subscribe} 
   Sleep    1s 
   Scroll Element Into View    ${setting}
   sleep     1s
   Click Button     ${save_role} 
   sleep  1s
   Click Button    ${ok_role_save}
   Sleep    1s
    

    

