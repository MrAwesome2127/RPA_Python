*** Settings ***
Documentation               This is where any documentation is added about the WHOLE test!
Resource                    ../Resources/Common.robot
Resource                    ../Resources/NintendoApp.robot
Test Setup                  Begin Web Test
Test Teardown               End Web Test
#Run Command:               robot -d results tests/nintendo.robot

*** Variables ***
${BROWSER} =                chrome
${URL} =                    https://www.nintendo.com
${Search_Item_#1} =         The Legend of Zelda™: Tears of the Kingdom

*** Test Cases ***
Search for Legend of Zelda Tears of the Kingdom game
    [Documentation]         This is where any documentation is added about THIS test!
    [Tags]                  2127    Regression  Search

    #Landing Page
    NintendoApp.Search for Product
    NintendoApp.Select Product

    #Product Page
    NintendoApp.Add "Physical" Copy to Cart

    #Checkout Page
    NintendoApp.View cart and check out
    NintendoApp.Validate Product is on Checkout