*** Settings ***
Documentation        Home Keywords
Resource             ../elements/home_elements.robot

*** Keywords ***
Given the initial context at Home
    Wait Until Element Is Visible            ${SELECT_LOCATION}
    Click Element                            ${SELECT_LOCATION}
When select location to continue
    Wait Until Element Is Enabled            ${CHOICES_INPUT}
    Click Element                            ${USA_STATE}
    Wait Until Element Is Visible            ${SHOP_BUTTON}
    Click Element                            ${SHOP_BUTTON}
Then goes to official page
    Wait Until Element Is Visible            ${COOKIES_CONTENT}
    Wait Until Element Is Visible            ${COOKIES_ACCEPT_BUTTON}
    Click Element                            ${COOKIES_ACCEPT_BUTTON}
    Sleep    2