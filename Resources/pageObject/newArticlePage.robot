*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${articleTitle}    Kopytko
${articleBio}    It's about food
${articleContent}    Kopytka are good and you need to try them.  
*** Keywords ***
Type Article Title 
    Input Text    xpath://*[@placeholder="Article Title"]    ${articleTitle}
Type Article Bio 
    Input Text    xpath://*[@placeholder="What's this article about?"]     ${articleBio}
Type Article Content 
    Input Text    xpath://*[@placeholder="Write your article (in markdown)"]  ${articleContent}
Click Publish Button 
    Click Button    xpath://*[@type="button"] 