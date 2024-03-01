*** Settings ***
Documentation          Home
Resource               ../setup/setup.robot
Resource               ../keywords/home_kws.robot

Test Setup             Browser Window
Test Teardown          Close Browser

*** Test Cases ***
Home
    [Tags]        home
    Given the initial context at Home
    When select location to continue
    Then goes to official page


