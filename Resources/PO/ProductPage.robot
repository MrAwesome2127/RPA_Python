*** Settings ***
Library                             SeleniumLibrary

*** Variables ***
${btn_AddToCart} =                  xpath=//*[@class="Buttonstyles__Button-sc-1rgmf3w-2 jDSaOH PurchaseOptionsstyles__WrappingButton-sc-10vf2cu-9 cakehc"]
${cbx_Physical} =                   id:Physical-radio-2

*** Keywords ***
Select "Physical" Copy
    wait until element is enabled   ${cbx_Physical}
    click button                    ${cbx_Physical}
    wait until element is enabled   ${btn_AddToCart}
    click button                    ${btn_AddToCart}

Validate Game, Price, and QTY
    wait until page contains        Added to cart
    page should contain             ${Search_Item_#1}
    page should contain             Qty: 1
    page should contain             $69.99