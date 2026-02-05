*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage

    Open Browser    https://computing.kku.ac.th    chrome    options=${options}
    Close Browser

*** Test Cases ***
Open KKU Website
    Open Browser To Login Page
