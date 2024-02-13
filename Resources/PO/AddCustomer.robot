*** Settings ***
Library             SeleniumLibrary


*** Variables ***
${ADDCUSTOMERS_HEADER_LABEL} =           Add Customer
${ADDCUSTOMERS_SUBMIT_BUTTON} =          Submit
${ADDCUSTOMERS_EMAIL_TEXTBOX} =          id=EmailAddress
${ADDCUSTOMERS_FIRST_NAME_TEXTBOX} =     id=FirstName
${ADDCUSTOMERS_LAST_NAME_TEXTBOX} =      id=LastName
${ADDCUSTOMERS_CITY_TEXTBOX} =           id=City
${ADDCUSTOMERS_STATE_DROPDOWN} =         id=StateOrRegion
${ADDCUSTOMERS_GENDER_RADIO} =           gender
${ADDCUSTOMERS_PROMO_CHECKBOX} =         name=promos-name

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains         ${ADDCUSTOMERS_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click Submit Button

Fill Customer Fields
    Input Text                       ${ADDCUSTOMERS_EMAIL_TEXTBOX}           janedoe@gmail.com
    Input Text                       ${ADDCUSTOMERS_FIRST_NAME_TEXTBOX}      Jane
    Input Text                       ${ADDCUSTOMERS_LAST_NAME_TEXTBOX}       Doe
    Input Text                       ${ADDCUSTOMERS_CITY_TEXTBOX}            Phoenix
    Select From List By Value        ${ADDCUSTOMERS_STATE_DROPDOWN}          AZ
    Select Radio Button              ${ADDCUSTOMERS_GENDER_RADIO}            female
    Select Checkbox                  ${ADDCUSTOMERS_PROMO_CHECKBOX}

Click Submit Button
    Click Button                     ${ADDCUSTOMERS_SUBMIT_BUTTON}