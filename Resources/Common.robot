*** Settings ***
Library                     Dialogs
Library                     SeleniumLibrary

*** Keywords ***
Begin Web Test
    ${New_BROWSER} =        Get Selection From User   Which Browser?  Edge    Chrome    Firefox
    set global variable     ${BROWSER}      ${New_BROWSER}
    open browser            about:blank     ${BROWSER}

End Web Test
    close browser

Setup Product Data


Removed Product Data
