*** Settings ***
Library    SeleniumLibrary
Resource     lacator.robot
*** Variables ***
${email_testeur}       zgolliaya3@gmail.com
${password_testeur}     aya123456789
*** Keywords ***
Add_Web_U
    Wait Until Element Is Visible    ${Users}
    Click Element    ${Users}
    Sleep    2s
    Click Button    ${add_web_user}
    Sleep    2s
    Select From List By Label     ${select_role}      TesteurQA
    Input Text    ${last_name}     Zgolli 
    Sleep    1s
    Input Text    ${first_name}    Aya
    Sleep    1s
    Scroll Element Into View    ${confirm_password_user}
    Sleep    1s
    Input Text    ${email}      ${email_testeur}
    Sleep    1s
    Input Password    ${password_user}     ${password_testeur} 
    Sleep    1s
    Input Password    ${confirm_password_user}       ${password_testeur} 
    Sleep    1s
    Click Button    ${save_user}
    sleep  1s 
    Click Button    ${ok_save_user}
    sleep  2s 
