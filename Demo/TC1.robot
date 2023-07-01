*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Check the browser launch
    open browser   https://www.demoblaze.com/index.html     chrome
Check the title of the hoome page
    open browser   https://www.demoblaze.com/index.html     chrome
    title should be     STORE
Check whether user is able to login
    open browser   https://www.demoblaze.com/index.html     chrome
    click element   id:login2
    sleep   4
    input text   id:loginusername   demo
    input text  id:loginpassword    demo
    click element   xpath://*[@id="logInModal"]/div/div/div[3]/button[2]
    sleep   3
    Element Should Be Visible  id:nameofuser
*** Keywords ***
