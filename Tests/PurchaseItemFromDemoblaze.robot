*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library    String
Test Setup  Open Browser  ${url}  ff
*** Variables ***
${url}  https://www.demoblaze.com/
${category}  Laptops
${productName}  Sony vaio i7
${addToCartBtn}  Add to cart
${name}    Krzysztof Krawczyk
${country}  Germany
${city}    Berlin
${cardNumber}  5555 6756 4556 7876
${cardYear}    2028
${cardMonth}    08
*** Test Cases ***
Purchase Items From Demoblaze
    # Go to the product page
    Click Link    link:${category}
    Wait Until Element Is Visible    link:${productName}
    Click Link  link:${productName}
    # Add product to the Cart
    Wait Until Element Is Visible    link:${addToCartBtn}
    Click Link    link:${addToCartBtn}
    Press Keys    None   RETURN
    # Go to the Cart
    Click Link    link:Cart
    # Assert if product is in the Cart 
    Wait Until Page Contains    ${productName}
    Page Should Contain    ${productName}
    # Proceed to checkout
    Wait Until Element Is Visible  css:.btn.btn-success
    Click Button    css:.btn.btn-success
    # Fill the Purchase Form
    Input Text    css:#name    ${name}
    Input Text    css:#country    ${country}
    Input Text    css:#city    ${city}
    Input Text    css:#card    ${cardNumber}
    Input Text    css:#month   ${cardYear}
    Input Text    css:#year    ${cardMonth}
    Click Button    xpath://*[@onclick="purchaseOrder()"]
    # Assert entered data 
    Wait Until Element Is Visible    css:.sweet-alert
    Page Should Contain    ${name}
    Page Should Contain    ${cardNumber}
    #Close modal window    
    Wait Until Page Contains    Thank you for your purchase!
    Click Button    xpath://html/body/div[10]/div[7]/div/button

*** Keywords ***
