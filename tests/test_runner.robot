*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           BrowserFunctions.py
Resource          loginkeyword.robot

*** Variables ***
${LOGIN URL}      https://test.salesforce.com
${BROWSER}        Chrome
*** Test Cases ***
Validate Login
    ${driver_path}=    BrowserFunctions.Get Driver Path With Browser        ${BROWSER}
    Open Browser     ${LOGIN URL}    ${BROWSER}    executable_path=${driver_path}
    Login to Salesforce 
    Sleep  5s
    Sleep  10s
    Close Browser