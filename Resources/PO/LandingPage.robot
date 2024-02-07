*** Settings ***
Library                             SeleniumLibrary

*** Variables ***
${fld_Search}                       name:q
${icon_Search_MagnifyingLens} =     xpath=//*[@data-name="Magnifying glass"]
${img_LOZ_Banner} =                 xpath=//*[@aria-label="The Legend of Zelda™: Tears of the Kingdom"][@class="ProductTileWidestyles__ContentWrapper-sc-q6g3tu-6 kVhGmd"]

*** Keywords ***
Go to Webpage
    Load
    Verify Page Loaded

Load
    go to                           ${URL}
    maximize browser window

Verify Page Loaded
    wait until page contains        My Nintendo Store

Search Product
    click element                   ${icon_Search_MagnifyingLens}
    input text                      ${fld_Search}         ${Search_Item_#1}
    wait until page contains        Top store products
    wait until element is visible   ${img_LOZ_Banner}

Select the Game Banner
    click link                      ${img_LOZ_Banner}
    wait until page contains        ${Search_Item_#1}