*** Settings ***
Documentation    This is some basic info about the test suite.
Library          SeleniumLibrary
Library          Dialogs
Resource         ../Resources/Common.robot
Resource         ../Resources/CRMApp.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test
#Run the script
#robot -d results Tests/Crm.robot

*** Variables ***
${BROWSER} =                 chrome
${URL} =                     https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =       janedoe@gmail.com
${VALID_LOGIN_PASSWORD} =    oscar


*** Test Cases ***
Home page must load
    [Documentation]    This test verifies that the home page loads correctly.
    [Tags]                1001    Home    Smoke
    CRMApp.Go to "Home" Page

Must be able to login with valid credentials
    [Documentation]    This test verifies that a user can login with valid credentials.
    [Tags]                1002    Login    Smoke
    CRMApp.Go to "Home" Page
    CRMApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Must be able to log out
    [Documentation]    This test verifies that a user can log out of his account once logged in with valid credentials.
    [Tags]                1004    Login    Smoke
    CRMApp.Go to "Home" Page
    CRMApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CRMApp.Sign Out

Must be able to add new customer
    [Documentation]    This test verifies that a new customer can be added.
    [Tags]                1006    Contacts    Smoke
    CRMApp.Go to "Home" Page
    CRMApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CRMApp.Add New Customer
    CRMApp.Sign Out

*** Keywords ***


