*** Settings ***
Variables  ../Resources/variables.py
Library  SeleniumLibrary

*** Variables ***
${url}  https://conduit.mate.academy/
${email}  emailuzytkownika1@test.com
${password}  Testing123!

*** Test Cases ***
Change User Settings 
    Open Browser  ${url}    ff
    Click Link    link:Sign in 
    Input Text    xpath://*[@placeholder="Email"]  ${email}
    Input Text    xpath://*[@placeholder="Password"]  ${password}
    Click Button    xpath://*[@type="submit"]  
    Click Link  link:Settings
    Input Text    xpath://*[@placeholder="Username"]  ${new_username}
    
*** Keywords ***

