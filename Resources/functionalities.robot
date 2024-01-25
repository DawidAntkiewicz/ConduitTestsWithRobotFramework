*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${username}    kopyyyytooo1223123
${email}       kopyyyypytooo1223123@testing.com    
${password}    Testing123!  

*** Keywords ***
Start Test 
    Open Browser  https://conduit.mate.academy/  firefox
    Maximize Browser Window
    
Registration Tests
    Click Link    link:Sign up 
    Input Text    xpath://*[@placeholder="Username"]     ${username}
    Input Text    xpath://*[@placeholder="Email"]        ${email}
    Input Text    xpath://*[@placeholder="Password"]     ${password}
    Click Button  xpath://*[@type="submit"] 
    Page Should Contain Link    link:${username}  

Finish Test
    Close Browser 