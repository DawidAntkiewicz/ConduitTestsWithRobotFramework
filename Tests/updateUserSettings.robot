*** Settings ***
Variables  ../Resources/variables.py
Library  SeleniumLibrary
Library    Dialogs
Test Setup  Open Browser  ${url}  ff 
# Test Teardown  Close Browser

*** Variables ***
${url}  https://conduit.mate.academy/
${email}  emailuzytkownika1@test.com
${password}  Testing123!
${newUsername}  uzytkownik31
${bio}      This bio is put here thanks to the robot framework

*** Test Cases ***
Change User Settings 
    Click Link    link:Sign in 
    Input Text    xpath://*[@placeholder="Email"]  ${email}
    Input Text    xpath://*[@placeholder="Password"]  ${password}
    Click Button  xpath://*[@type="submit"]  
    Click Link    link:Settings
    Input Text    xpath://*[@placeholder="Username"]  ${newUsername}
    Input Text    xpath://*[@placeholder="Short bio about you"]   ${bio}
    Click Button  xpath://*[@type="submit"] 
    Page Should Contain Link    link:${newUsername}
    Click Link    link:Settings
    Textarea Should Contain    xpath://*[@placeholder="Short bio about you"]  ${bio}   
    Click Button    class:btn btn-outline-danger
    
*** Keywords ***

