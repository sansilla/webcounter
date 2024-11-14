*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    CLICK BUTTON  Paina
    CLICK BUTTON  Nollaa
    Page Should Contain  nappia painettu 0 kertaa