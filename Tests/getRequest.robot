*** Settings ***
Library  RequestsLibrary  
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${url}        https://conduit.mate.academy/
#${token}       "Bearer "
${username}    uytkownik1
${email}        emailuzytkownika1@test.com    
${password}      Testing123!

*** Test Cases ***
Loging using request

                # #GET Request
                # GET  ${url}api/tags 
                # Status Should Be    200
    #POST Request 
    ${body}  Create Dictionary  email=${email}  password=${password}
    ${headers}  Create Dictionary  Content-Type=application/json
    ${request}  POST  ${url}api/users/login   json=${body}  headers=${headers}
    Status Should Be    OK  ${request}

*** Keywords ***
