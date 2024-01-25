*** Settings ***
Library  SeleniumLibrary
Resource  ../functionalities.robot
*** Variables ***

*** Keywords ***
Type Email     
    Input Text    xpath://*[@placeholder="Email"]    ${email}
Type Password
    Input Text    xpath://*[@placeholder="Password"]    ${password}
Click Log in Button 
    Click Button    xpath://*[@type="submit"]

     