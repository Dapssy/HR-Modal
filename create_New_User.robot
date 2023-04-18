*** Settings ***
Documentation    Validation of HR_Modal
Library          SeleniumLibrary
Resource         My Keywords.robot
Resource         Variables.robot

*** Test Cases ***



Verify that movie was succesfully added to watch-list
    Login to the Signin page



Verify that the login functionality, correct username and password
   Login to the Signin page

Verify that Employee can apply for leave
  Login to the Signin page
  Apply for Leave

Verify that Employee cannot apply for overlappign days
    Login to the Signin page
    Apply for Leave
    overlappign days


*** Keywords ***
