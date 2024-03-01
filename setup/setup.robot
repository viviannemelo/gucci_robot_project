*** Settings ***
Documentation       Configuração de execução

Library            SeleniumLibrary      10
Library            Collections
Library            DateTime
Library	           JSONLibrary
Library            OperatingSystem
Library            RequestsLibrary
Library            String
Library            pabot.PabotLib
Library            DebugLibrary
Library            FakerLibrary        locale=pt_BR

# Resource           .././keywords/home_kws.robot

*** Variables ***
${HEADLESS}                    headlesschrome
${URL_STG}                     https://www.gucci.com
${MODE_BROWSER}                ${EMPTY}

*** Keywords ***
Browser Window
    IF  '${MODE_BROWSER}'=="headless"
        Chrome Headless
    ELSE IF     '${MODE_BROWSER}'=='${EMPTY}'
        Chrome Front
    END
    Maximize Browser Window

Chrome Headless
    ${chrome_options}=      Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()       sys, selenium.webdriver
    Call Method     ${chrome_options}       add_argument        --disable-extensions
    Call Method     ${chrome_options}       add_argument        --headless
    Call Method     ${chrome_options}       add_argument        --disable-gpu
    Call Method     ${chrome_options}       add_argument        --no-sandbox
    Create Webdriver        Chrome      chrome_options=${chrome_options}
    Maximize Browser Window
    Go To           ${URL_STG}

Chrome Front
    Open Browser                   ${URL_STG}     chrome

Close Browser
    # Capture Page Screenshot
    Close Browser