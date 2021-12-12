*** Variables ***
${signup_url}   https://app.vested.co.in/login
${browser}  chrome
${signup_element}   xpath://span[contains(text(),'Sign up')][1]
${wait_until_load}  xpath://body/div[@id='__next']/div/div/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]
${click_element}    xpath://body/div[@id='__next']/div/div/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]
${email_box_locator}    xpath://input[@name='email']
${email}    fgxyz123@mailinator.com
${password_box_locator}     //input[@name='password']
${password}     Abcd@12345
${click_button}  xpath://span[normalize-space()='Sign up']
${mailinator}   https://www.mailinator.com/
${mailinator_public_inbox}  xpath://a[normalize-space()='Public Inbox']
${mailinator_url_load}      xpat://a[normalize-space()='Public Inboxes']//*[name()='svg']
${mailinator_element}      xpath://a[normalize-space()='Public Inboxes']
${mailinator_user_name_locator}     xpath://input[@id='inbox_field']
${mailinator_user_name}     fgxyz123
${mailinator_button_locator}        xpath://button[normalize-space()='GO']
${mailinator_page_to_load}      xpath://td[normalize-space()='Your Vested Verification Code']
${mailinator_click_button}      xpath://td[normalize-space()='Your Vested Verification Code']
${mailinator_locator}       xpath://html/body
${mailinator_frame}     xpath://iframe[@title="HTML Email Message Body"][@id='html_msg_body']
${dashboard_url}        https://app.vested.co.in/dashboard
${dashboard_title}      Dashboard | Vested Finance

${vested_login_url}     https://app.vested.co.in/login
${vested_Sign_element}  //div[@id='__next']//div[2]//div[1]//div[1]//div[2]//div[1]//div[1]
${vested_user_email_locator}    xpath://*[@id="__next"]/div/div[2]/div/div/div[2]/form/div[1]/div/div/input
${user_email}   anjalivikas23@gmail.com
${vested_user_pass_locator}     xpath://*[@id="__next"]/div/div[2]/div/div/div[2]/form/div[2]/div/div/span/input
${user_password}    Vested@123
${login_button}     xpath://*[@id="__next"]/div/div[2]/div/div/div[2]/form/div[4]/button
${page_load}    Market
${search_stocks}        xpath://div[contains(text(),'Search Stocks and ETFs')][1]
${search_text}      xpath://body/div[@id='__next']/div/div[@id='main']/div[1]
${assert_text}       Agilent Technologies Inc, Common Stock
${assert_locator}    xpath://div[normalize-space()='Agilent Technologies Inc, Common Stock']

