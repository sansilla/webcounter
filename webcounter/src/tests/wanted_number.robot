*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When writing wanted number the counter is same
    Go To  ${HOME_URL}
    Input Text  amount  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa