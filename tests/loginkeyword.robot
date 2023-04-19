*** Settings ***
Library    SeleniumLibrary
Variables  salesforce_locators.py
Variables  secrets.py

*** Keywords ***
Login to Salesforce 
    Input Text  ${login_page['username']}   ${login_creds['username']} 
    Input Text  ${login_page['password']}  ${login_creds['password']}
    Click Element  ${login_page['login']}
