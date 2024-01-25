*** Settings ***
Documentation  Basic Registration Functionality
Library  SeleniumLibrary
Resource  ../Resources/functionalities.robot       #<- importujemy stamtąd nasze keywords oraz zmienne 
Resource  ../Resources/pageObject/headerPage.robot
Resource  ../Resources/pageObject/newArticlePage.robot
Resource  ../Resources/pageObject/loginPage.robot
Test Setup  functionalities.Start Test                             #<- To będzie się robić przed zaczęciem testu (otworzenie strony)   
Test Teardown  functionalities.Finish Test                         #<- To wykona się zawsze po teście (zamknięcie przeglądarki) 


# *** Variables *** <- Zostały umieszone w foldrze 'functionalities.robot'


*** Test Cases ***
Registration for Conduit Page and Creating New Article 
    [Documentation]  It verifies if user is able to create a new account
    [Tags]  Functional
    
    functionalities.Registration Tests
Log in and Create New Article
    [Documentation]  It verifies if registered user is able to create a new article
    [Tags]  Functional
    headerPage.Go to the Loging Page
    loginPage.Type Email
    loginPage.Type Password
    loginPage.Click Log in Button
    headerPage.Go to the New Article Page
    newArticlePage.Type Article Title
    newArticlePage.Type Article Bio
    newArticlePage.Type Article Content
    newArticlePage.Click Publish Button
    # Assertion 
    Page Should Contain    ${articleContent}
    

# Keywords działają jak stworzenie funkcji, przypisałem im kilka poleceń które odpalam w ***Test Case***
# Keywords umieściłem w functionalities.robot



