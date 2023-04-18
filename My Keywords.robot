*** Settings ***
Documentation   Keyword for HR_Modal Test
Library     SeleniumLibrary
Resource   Variables.robot



*** Keywords ***

Login to the Signin page
     Open Browser                    ${URL}      ${BROWSER}
     Maximize Browser Window
     input text           ${LOGIN_USERNAME_FIELD}       ${USER_EMAIl}
     Input Text                     ${LOGIN_PASSWORD_FIELD}       ${USER_PASSWORD}
     Click Element                  ${PAGE_SIGNIN_BTN}
     Wait Until Element Is Visible  ${EMPLOYEE_SELF_SERVICE}        15s
     Page Should Contain            ${LOGIN_USER}
     #[Teardown]  close browser


Apply for Leave
    Click Element                   ${lEAVE_BUTTON}
    Wait Until Element Is Visible   ${ADD_BUTTON}
    Click Element                   ${ADD_BUTTON}
    Click Element                   ${CALANDER_DATE}
    Click Element                   ${CALANDER_DATE}
    Click Element                   ${CALANDER_DATE}
    Click Element                   ${CALANDER_DATE}
    Click Element                   ${CALANDER_DATE}
    Click Element                   ${CALANDER_DATE}
    Wait Until Element Is Visible   ${DATE_24TH}
    Click Element                   ${DATE_24TH}
    Click Element                   ${DATE_26TH}
    Click Element                   ${REQUEST_LEAVE}
    Click Element                   ${YES_BTN}
    Wait Until Element Is Visible   ${lEAVE_DATE}         20s
    Page Should Contain             ${lEAVE_CONFIRM}

overlappign days
    Page Should Contain   ${TEXT}


Second keyword

