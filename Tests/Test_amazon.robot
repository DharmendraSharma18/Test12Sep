*** Settings ***
Documentation    Suite description
Library     Selenium2Library

*** Test Cases ***
Test Launch_amazon
    [Tags]    DEBUG
    Provided precondition

    When Page should contain element  //*[@aria-label="Amazon"]

    Then log  "Home Page LOaded"
    close browser
*** Keywords ***
Provided precondition
    #Setup system under test
    Open Browser  https://www.amazon.in/  ie
    maximize browser window
