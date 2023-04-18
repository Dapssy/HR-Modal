*** Settings ***
Documentation   Variable for HR_modal Test
*** Variables ***



${URL}                      https://acceptance.mgthost.com/login
${BROWSER}                  chrome
${LOGIN_USERNAME_FIELD}     name:email
${LOGIN_PASSWORD_FIELD}     name:password
${USER_EMAIl}               demo+LJ-01324@mercans.com
${USER_PASSWORD}            Employee1!
${PAGE_SIGNIN_BTN}          xpath://*[@id="loginpad-webapp"]/div/div[2]/div[1]/div/span/button
${LOGIN_USER}               Lily Johnston
${EMPLOYEE_SELF_SERVICE}    xpath://*[@id="navigation"]/div[1]/div[1]/button/div[2]
${NEW_EMAIL}                name:email
${PASSWORD}                 name:password
${SIGNIN_USER_BNT}          id:signInSubmit
${DATE_24TH}                id:2022-10-24
${DATE_26TH}                id:2022-10-26
${REQUEST_LEAVE}            xpath://span[normalize-space()='Request leave']
${YES_BTN}                  xpath://span[normalize-space()='Yes']
${CALANDER_DATE}            xpath://div[@class='arrow-hover__wrapper']//*[name()='svg']
${ADD_BUTTON}               xpath://*[name()='path' and contains(@d,'M15 7C15.5')]
${lEAVE_BUTTON}             xpath://span[contains(text(),'Submit and review leave requests, view your leave ')]
${lEAVE_DATE}               xpath://body/div/div/div[@props='[object Object]']/div/div/div/div[2]/div[2]
${lEAVE_CONFIRM}            October 24, 2022
${TEXT}                     Absence period overlaps with