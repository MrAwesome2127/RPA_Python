*** Settings ***
Library                             SeleniumLibrary

*** Variables ***
${btn_ViewCartandCheckout} =        xpath=//*[@class="Buttonstyles__Button-sc-1rgmf3w-2 bjubZP AddedToCartstyles__Button-sc-1h53fru-9 dRtwEA"]

*** Keywords ***
Verify Product
    click link                      ${btn_ViewCartandCheckout}

Verify the Product is in the Cart
    wait until page contains        Shopping cart
    page should contain             ${Search_Item_#1}