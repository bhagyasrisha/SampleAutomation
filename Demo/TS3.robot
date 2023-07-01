*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://demo.automationtesting.in/Register.html
${browser}  chrome

*** Test Cases ***
Check whether user is able to select a value from the dropdown
    [Tags]    smoke
    Launch Application
    maximize browser window
    scroll element into view     id:firstpassword
   # select from list by index    Skills     7
    click element   id:msdd
    click element   xpath://a[text()='Dutch']
    click element   xpath://a[text()='French']
    select from list by label    Skills     PHP
    sleep    10
Check the frames functionality
    [Tags]    regression

    open browser    https://demo.automationtesting.in/Frames.html   ${browser}
    select frame    id:singleframe
    input text    xpath:/html/body/section/div/div/div/input    tom

Check the drag and drop functionality
    [Tags]    sanity
    open browser   https://jqueryui.com/droppable/   ${browser}
    select frame    xpath://*[@id="content"]/iframe
    drag and drop    id:draggable   id:droppable
    sleep   7

*** Keywords ***
Launch Application
        open browser   ${url}     ${browser}

