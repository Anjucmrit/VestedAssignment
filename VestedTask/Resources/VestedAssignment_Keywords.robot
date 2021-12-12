*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library           OperatingSystem
*** Keywords ***
Open the browser
    Open Browser  ${signup_url}  ${browser}
    Maximize Browser Window

Navigate the SignUP page of the Vested Finance
    Click Element     ${signup_element}
    Wait Until Page Contains Element    ${wait_until_load}
    Click Element   ${click_element}

Fill the SignUP form on the Vested Web Portal
    Input Text  ${email_box_locator}    ${email}
    Input Text  ${password_box_locator}     ${password}
    Click Element   ${click_button}

Verify the OTP verification in the Mailinator Email Server
    Execute Javascript  window.open()
    Switch Window   locator=NEW
    Go To   ${mailinator}
    Click Element   ${mailinator_public_inbox}
    Input Text   xpath://input[@id='inbox_field']   fgxyz123
    Click Element   xpath://button[normalize-space()='GO']
    Title should be     Mailinator
    ## Read OTP from Mail
    Close Browser

Click on the Browse to search a Stocks
    ${data}    Get file     ./Resources/data.json
    ${object}   Evaluate    json.loads('''${data}''')   json
    Open Browser  ${vested_login_url}  ${browser}
    Go To   ${vested_login_url}
    Click Element  ${vested_Sign_element}
    Input Text  ${vested_user_email_locator}    ${user_email}
    Input Text  ${vested_user_pass_locator}     ${user_password}
    Click Button    ${login_button}
    Sleep   15s
    Location Should Contain     ${dashboard_url}
    Sleep   10s
    Title Should Be   ${dashboard_title}
    Sleep   6s
    Click Element       ${search_stocks}
    Sleep   6s
    Set Focus To Element    ${search_stocks}
    Sleep   5s
    Press Keys    css:#react-select-stocksdesk-input    ${object["name"]}   ENTER
    Sleep   5s
    ${response}    Get Text     ${assert_locator}
    Log     ${response}
    Should Be Equal As Strings    ${response}    ${assert_text}
    ${data}    Get file    /Users/aashi/PycharmProjects/pythonProject/Resources/data.json
    ${object}   Evaluate    json.loads('''${data}''')   json
    Log     ${object["name"]}
    Close Browser





