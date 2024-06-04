*** Settings ***
Library       SeleniumLibrary
Library       RequestsLibrary
Library       Collections
Library       os
Library    String
Library    OperatingSystem
Resource   lacator.robot
Library    JSONLibrary

*** Variables ***
${COUNTRY_CODE}    +216
@{NUMBER_PREFIX}    2    3    4    5    7    9
${PLATE_CODE_LENGTH}    2
${PLATE_NUMBER_LENGTH}    4
@{LETTERS}   0     1    2    3    4    5    6    7    8    9    
@{NUMBERS}    0    1    2    3    4    5    6    7    8    9
*** Keywords ***
# Générer numéro de téléphone tunisien
#     ${index}=    Evaluate    random.randint(0, len(${NUMBER_PREFIX}) - 1)    modules=random
#     ${prefix}=    Get From List    ${NUMBER_PREFIX}    ${index}
#     ${random_part}=    Generate Random String    7    [NUMBERS]
#     ${phone_number}=    Catenate    SEPARATOR=    ${COUNTRY_CODE}    ${prefix}    ${random_part}
#     RETURN   ${phone_number}
*** Test Cases ***
# PUT_Register
#     [Documentation]    Ce test génère des numéros de téléphone tunisiens aléatoires.
#     ${phone_number}=    Générer numéro de téléphone tunisien
#     ${phone_number_string}=    Convert To String    ${phone_number}
#     Log To Console    ${phone_number_string}
#     Set Global Variable    ${phone_number_string}
# #PUT_Register 
#    ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
#    ${body}=  create dictionary  value=${phone_number_string}  method=phone
#    Create Session    mysession  ${base_url}     headers=${header}       
#    ${response}=  PUT On Session   mysession    ${register}         json=${body}         headers=${header}
#    log To Console    ${response}
#    Log To Console    ${response.content}
#    #Validations
#    ${status_code}=  convert to string  ${response.status_code}
#    Should Be Equal      ${status_code}    204
#    ${res_body}=  convert to string  ${response.content} 
#    Set Global Variable    ${response}
# Put_OTP
#    ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
#    ${body}=  create dictionary  value=${phone_number_string}  method=phone   otp=4711
#     ${response}=  PUT On Session   mysession    ${OTP}         json=${body}         headers=${header}
#    log To Console    ${response}
#    Log To Console    ${response.content}
#    #Validations
#    ${status_code}=  convert to string  ${response.status_code}    
#    Should Be Equal      ${status_code}    204
#    ${res_body}=  convert to string  ${response.content} 
#    Set Global Variable    ${response}
# Post_sgin_in 
# #Add Random Number to Email
#     ${email_prefix}=    Generate Random String   8    [NUMBERS]
#     ${email}=    Catenate    SEPARATOR=    zgolliaya    ${email_prefix}    @gmail.com
#     Log To Console   Email with Random Number: ${email}
#     Set Global Variable    ${email}
#    ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
#    ${body}=  create dictionary   first_name=Aya   last_name=Zgolli   email=${email}   phone=${phone_number_string}    title= miss  device_token=xxxx-xxxx-xxxx-xxxx  gender=female  password=pmbfsaaa20   os=android  version=1.0.0
#     ${response}=  POST On Session   mysession    ${sign_in}         json=${body}         headers=${header}
#    log To Console    ${response}
#    Log To Console    ${response.content}
#    #Validation
#    ${status_code}=  convert to string  ${response.status_code}    
#    Should Be Equal      ${status_code}    200
#    ${res_body}=  convert to string  ${response.content} 
#    Set Global Variable    ${response}
Post_login 
    ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
    ${body}=  create dictionary   email_or_phone=29079783   password=pmbfsaaa20   os=android  device_token=xxxx-xxxx-xxxx-xxxx   version=1.0.0
    Create Session    mysession  ${base_url}      headers=${header} 
    ${resp}=  POST On Session   mysession    ${login}         json=${body}         headers=${header}
    log To Console    ${resp}
    Log To Console    ${resp.content}
    Set Global Variable    ${resp}
   #Validations
   ${status_code}=  convert to string  ${resp.status_code}    
   Should Be Equal      ${status_code}    200
   ${res_body}=  convert to string  ${resp.content} 
   Set Global Variable    ${resp}
Get_vehicule_Brands
   ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
   ${response}=  Get On Session   mysession    ${vehicule_Brands}      headers=${header}    
    log To Console    ${response}
    Log To Console    ${response.content}
    #Validations
   ${status_code}=  convert to string  ${response.status_code}    
   Should Be Equal      ${status_code}    200
   ${res_body}=  convert to string  ${response.content} 
   Set Global Variable    ${response}
Get_vehicule_Types
  ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
   ${response}=  Get On Session   mysession    ${vehicule_Type}      headers=${header}    
    log To Console    ${response}
    Log To Console    ${response.content}
    #Validations
   ${status_code}=  convert to string  ${response.status_code}    
   Should Be Equal      ${status_code}    200
   ${res_body}=  convert to string  ${response.content} 
   Set Global Variable    ${response}
GET_parking_list
   ${header}=  Create dictionary  Content-Type=application/json  accept=*/*
   ${response}=  Get On Session   mysession    ${Parking_list}      headers=${header}    
    log To Console    ${response}
    Log To Console    ${response.content}
    #Validations
   ${status_code}=  convert to string  ${response.status_code}    
   Should Be Equal      ${status_code}    200
   ${res_body}=  convert to string  ${response.content} 
   Set Global Variable    ${response}
Post_Add_Vehicule
#Generate Tunisian Car Plate Code
    ${letters}=    Evaluate    "".join(${LETTERS})
    ${plate_code}=    Generate Random String    ${PLATE_CODE_LENGTH}    ${letters}
    Log    Plate Code: ${plate_code}

#Generate Tunisian Car Plate Number
    ${numbers}=    Evaluate    "".join(${NUMBERS})
    ${plate_number}=    Generate Random String    ${PLATE_NUMBER_LENGTH}    ${numbers}
    Log    Plate Number: ${plate_number}
 
    ${json_resp}=  Set Variable  ${resp.json()}
    Log To Console    ${json_resp}
    ${token}=  Get Value From Json  ${json_resp}  $.data.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    ${body}=  create dictionary   name=Car_test  color=black   plate_code=${plate_code}   plate_number=${plate_number}  type_id=4   brand_id=12  carParkIds=[${3}]
    ${response1}=  POST On Session   mysession   ${Add_Vehicule}        json=${body}         headers=${header}
    log To Console    ${response1}
    Set Global Variable    ${response1}
    Log To Console   ${response1.status_code}
Post_pre_booking
   ${json_resp}=  Set Variable  ${resp.json()}
    Log To Console    ${json_resp}
    ${token}=  Get Value From Json  ${json_resp}  $.data.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    # Convertir la réponse en JSON
    ${json_respon}=  Set Variable  ${response1.json()}
    Log To Console    ${json_respon}
    
    # Extraire l'ID du véhicule
    ${vehicle_id}=  Get Value From Json  ${json_respon}  $.data.id
    Log To Console   ${vehicle_id}
    ${vehicle_id1}=  convert to string   ${vehicle_id}[0] 
    Set Global Variable    ${vehicle_id1}   
    ${body}=  create dictionary   parking_id=5   vehicle_id=${vehicle_id1}      start_time=2024-06-04 13:00   end_time=2024-06-04 16:00  price=500
    ${response}=  POST On Session   mysession   ${pre_booking_order}         json=${body}         headers=${header}
    log To Console    ${response}
    Log To Console   ${response.status_code}
GET_subscriptions_list
  ${json_resp}=  Set Variable  ${resp.json()}
    Log To Console    ${json_resp}
    ${token}=  Get Value From Json  ${json_resp}  $.data.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0] 
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
   ${response}=  Get On Session   mysession    ${list_sub}      headers=${header}
    log To Console    ${response}
    Log To Console   ${response.status_code}
POST_subscription
   ${json_resp}=  Set Variable  ${resp.json()}
    Log To Console    ${json_resp}
    ${token}=  Get Value From Json  ${json_resp}  $.data.token
    log to console   ${token}
    ${token_l}=  Set Variable  ${token}[0]    
    ${authorization_header}=  Set Variable    Bearer ${token_l}
    Log To Console     ${authorization_header}
    ${header}=  Create Dictionary     Authorization=${authorization_header} 
    ${body}=  create dictionary   offer_id=2  color=black   parking_id=5   firstname=Aya  lastname=Zgolli   entry_date=2024-06-04  vehicle1=${vehicle_id1} 
    ${response1}=  POST On Session   mysession   ${add_sub}        json=${body}         headers=${header}
    log To Console    ${response1}
    Set Global Variable    ${response1}
    Log To Console   ${response1.status_code}
