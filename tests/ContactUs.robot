*** Settings ***
Documentation       Contact Us validation - Liveintent website
Library             Selenium2Library
Suite Setup         Open Browser  ${HOMEPAGE}  ${BROWSER}
Suite Teardown      Close Browser

*** Variables ***
${HOMEPAGE}         http://www.liveintent.com
${BROWSER}          chrome

*** Test Cases ***
Contact Us button should be present on Free Evaluation page

    Click Link                          xpath=//a[@href="/free-evaluation/"]
    Wait until page contains element    xpath=//*[@class="img-responsive free-evaluation-bg grow"]  60s
    Page Should Contain Element         xpath=//*[@class="header-cta"]  60s