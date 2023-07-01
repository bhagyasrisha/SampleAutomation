*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://www.demoblaze.com/index.html
${browser}  chrome

*** Test Cases ***
Check the browser launch
    Launch Application
Check the title of the hoome page
    Launch Application
    title should be     STORE
Check whether user is able to login
    Launch Application
    click element   id:login2
    sleep   4
    input text   id:loginusername   demo
    input text  id:loginpassword    demo
    click element   xpath://*[@id="logInModal"]/div/div/div[3]/button[2]
    sleep   3
    Element Should Be Visible  id:nameofuser
*** Keywords ***
Launch Application
        open browser   ${url}     ${browser}
