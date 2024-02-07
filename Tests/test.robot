*** Settings ***
Documentation       This is where any documentation is added about the WHOLE test!
Library             SeleniumLibrary

# Execute in CLI terminal:
# robot -d results tests/test.robot

*** Variables ***


*** Test Cases ***
Add a New customer
    [Documentation]             This is where any documentation is added about THIS test!
    [Tags]                      2127    Smoke   Customer
    # Initialize Selenium
    set selenium speed          .2s
    set selenium timeout        10s

    # Open Browser
    log                         Starting the test!
    open browser                https://automationplayground.com/crm/   chrome  #edge    firefox

    # Resize the window browser
    set window position         x=341       y=169
    set window size             width=1935  height=1090

    ### Test Steps:

    # Home Page
    page should contain         Customers Are Priority One!
    click link                  id=SignIn

    # Sign In Page
    page should contain         Login
    input text                  id=email-id     admin@robotfromeworktutorial.com
    input text                  id=password     Password12345
    click button                id=submit-id

    # Customer Page
    page should contain         Our Happy Customers
    click link                  id=new-customer

    # Add Customer Page
    page should contain         Add Customer
    input text                  id=EmailAddress     Painter@Painters.com
    input text                  id=FirstName        Bob
    input text                  id=LastName         Ross
    input text                  id=City             Muncie
    select from list by value   id=StateOrRegion    IN
    select radio button         gender         male
    select checkbox             name=promos-name
    click button                Submit

    # Customer Page
    page should contain         Our Happy Customers
    wait until page contains    Success! New customer added.

    sleep                       3s
    close browser

*** Keywords ***



