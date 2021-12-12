*** Settings ***
Documentation  To Test the SignUP Flow Vested Web Portal
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections
Resource    ../Resources/VestedAssignment_Keywords.robot
Resource    ../Resources/VestedAssignment_Variables.robot

*** Test Cases ***
Validate Successfull SignUP for Vested Web Portal
    Open the browser
    Navigate the SignUP page of the Vested Finance
    Fill the SignUP form on the Vested Web Portal
    Verify the OTP verification in the Mailinator Email Server
    Click on the Browse to search a Stocks
    #Enter the stock name in the Search box
    #Verify the stock name is present and listed correctly.

