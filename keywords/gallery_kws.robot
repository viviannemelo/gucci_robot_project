*** Settings ***
Documentation        Gallery Keywords
Resource             ../elements/gallery_elements.robot

*** Keywords ***
Given start the USA Home page
    Sleep     2s
    Wait Until Element Is Visible                 ${HOME_BANNER}
    Wait Until Element Is Visible                 ${GALLERY}
    Click Element                                 ${GALLERY}
    # Click Element                            ${COOKIES_ACCEPT_BUTTON}
    # Click Element                            ${COOKIES_ACCEPT_BUTTON}

    
# When select a gallery
# Then goes to gallery page