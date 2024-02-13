*** Settings ***
Library             SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    #Set Selenium Speed           0.2s
    Set Selenium Timeout         10s
    open browser                 about:blank    ${BROWSER}
    Set Window Size              1920    1080

End Web Test
    Close All Browsers
