*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}          https://pumc-b2c-backoffice.asteroidea.co/login 
${userB2C}        admin
${passwordB2C}    admin
*** Test Cases ***
loginB2C
   login1B2C
   login2B2C
   login3B2C
   login4B2C
   login5B2C
   login6B2C
*** Keywords ***
login1B2C
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
login2B2C
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
login3B2C
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
login4B2C
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
login5B2C
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
login6B2C
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
    
    

    

