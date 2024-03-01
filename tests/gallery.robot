*** Settings ***
Documentation        Gallery

Resource               ../keywords/gallery_kws.robot

*** Test Cases ***
Gallery
    [Tags]        gallery
    Given start the USA Home page