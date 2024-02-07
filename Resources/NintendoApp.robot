*** Settings ***
Library                             SeleniumLibrary
Resource                            ../Resources/PO/CheckoutPage.robot
Resource                            ../Resources/PO/LandingPage.robot
Resource                            ../Resources/PO/ProductPage.robot

*** Variables ***

*** Keywords ***
Search for Product
    LandingPage.Go to Webpage
    LandingPage.Search Product

Select Product
    LandingPage.Select the Game Banner

Add "Physical" Copy to Cart
    ProductPage.Select "Physical" Copy
    ProductPage.Validate Game, Price, and QTY

View cart and check out
    CheckoutPage.Verify Product

Validate Product is on Checkout
    CheckoutPage.Verify the Product is in the Cart