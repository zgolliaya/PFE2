*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#login
${URL}             https://pumc-b2c-backoffice.asteroidea.co/login 
${userB2C}          admin
${passwordB2C}       admin
${path_user}          //input[contains(@name, '_username')] 
${path_password}     //input[contains(@name, '_password')] 
${path_button_continue}       //button[contains(., 'Continue')]
#add_role
${path_user_management}         //span[@class='menu-title' and text()='User Management']
${path_role}                  //a[contains(@class, 'menu-link') and @href='/roles/index']
${path_add_role_button}        //button[contains(@class, 'btn') and contains(@class, 'btn-primary') and @onclick='addRole()' and @type='button']
${role_name}                  //input[@id='settings_roles_name']
${role_name_arabe}             //input[contains(@id, 'settings_roles_name_ar')]
${check_deshbord}         //input[contains(@class, 'form-check-input') and contains(@id, 'dashboard_canView')]
${check_app_user}         //input[contains(@id, 'app_users_canView')]
${check_user_management1}      //input[contains(@id, 'user_management_canAdd')]
${check_user_management2}      //input[contains(@id, 'user_management_canEdit')]
${check_user_management3}      //input[contains(@id, 'user_management_canView')]
${check_user_management4}      //input[contains(@id, 'user_management_canDelete')]
${check_user_management5}        //input[contains(@id, 'user_management_canEnable')]
${carpark_edit}               //input[contains(@id, 'car_park_canEdit')]
${carpark_view}              //input[contains(@id, 'car_park_canView')]
${carpark_delete}           //input[contains(@id, 'car_park_canDelete')]
${carpark_enable}           //input[contains(@id, 'car_park_canEnable')]
${carpark_shift}           //input[contains(@id, 'car_park_syncShift')]
${shifts}                 //input[contains(@id, 'shifts_canView')]
${pay_as_you_go}           //input[contains(@id, 'pay_as_you_go_canView')]
${pre_booking}             //input[contains(@id, 'pre_booking_canView')]
${subscribe}               //input[contains(@id, 'subscription_canView')]
${setting}                 //input[contains(@id, 'settings_canView')]
${save_role}               //button[contains(@id, 'kt_account_profile_details_submit')]
${ok_role_save}            //button[contains(@class, 'swal2-confirm')]
#add web user 
${Users}                 //a[contains(@class, 'menu-link') and span[contains(@class, 'menu-title') and text()='Users']]
${add_web_user}           //button[contains(@onclick, 'addWebUser()')]
${select_role}            //select[contains(@id, 'web_users_role')]
${last_name}             //input[contains(@id, 'web_users_lastname')]
${first_name}            //input[contains(@id, 'web_users_firstname')]
${email}              //input[contains(@id, 'web_users_email')]
${password_user}          //input[contains(@id, 'web_users_password')]
${confirm_password_user}   //input[contains(@id, 'web_users_confirmPassword')]
${save_user}            //button[contains(@id, 'kt_profile_details_submit')]
${ok_save_user}          //button[contains(@class, 'swal2-confirm')]
#logout 
${caractere}           //div[contains(@class, 'cursor-pointer') and contains(@class, 'symbol')]
${logout}             //div[@class='menu-item px-5']/a[text()='Sign Out']
#dark_mode
${soleil}       //a[contains(@class, 'btn btn-icon btn-custom btn-icon-muted btn-active-light btn-active-color-primary w-35px h-35px')]
${dark}        //a[contains(.,"Dark")]
#test API
${base_URL}       https://b2c.pumc.com.kw/
${register}      /api/auth/verification/send
${OTP}        /api/auth/verify
${sign_in}     /api/auth/register
${login}      /api/auth/login
${vehicule_Brands}    /api/vehicles/brands
${vehicule_Type}     /api/vehicles/types
${Parking_list}     /api/parking/list
${Add_Vehicule}     /api/vehicles/add
${pre_booking_order}    /api/pre-booking/order
${list_sub}        /api/subscriptions/list?page=1
${add_sub}    /api/subscriptions/add

