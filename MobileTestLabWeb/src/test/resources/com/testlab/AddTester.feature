Feature: Project admin can add Tester
As a Project admin
I want to add Tester

Scenario: Project admin can add tester - Happy path
Given Project Admin is in Project Home Page
When opens the user module
And Click on Add tester button
Then the Add Tester page is displayed
When enters the full name as 'Tester One'
And enters the full name as 'TestUser'
And enters the password as 'Password12'
And enters the confirm password as 'Password12'
And email as 'testuser@example.com'
And saves the form
Then the success message is shown as dialog
And the user is in Tester List page

Scenario Outline: Project admin cannot add tester with invalid data

Given Project Admin is in Project Home Page
When opens the user module
And Click on Add tester button
Then the Add Tester page is displayed
When enters the full name as '<full name>'
And enters the full name as '<Username>'
And enters the password as '<Password>'
And enters the confirm password as '<Password>'
And email as '<email>'
And saves the form
Then the success message <ErrorMessage>
And the user is in Add Tester Page

Examples:
    |full name|Username         |Password|      ErrorMessage|Email|
    |testfulname|Name|Pword|Not a valid user|test@trest.com|
    |testfulname|$%$Name|Pword$%$%|Not a valid user|test@trest.com|
    |test fulname| | |please enter valid Username and Passord|test@trest.com|
    |test fulname|  |ValidPass@123|please enter valid Username|test@trest.com|
    |testfulname|Validuser| |please enter valid Passord|test@trest.com|
    ||Name|Pword|Not a valid fullname|test@trest.com|
    |*@£*&(£|Name|Pword|Not a valid user|test@trest.com|
    |testfulname|Name|Pword|Not a email|test|
    |testfulname|Name|Pword|Not a email|test@|
    |testfulname|Name|Pword|Not a email|test@tt|
    |testfulname|Name|Pword|Not a email|testtt.c|
    
    
     Scenario Outline: Project admin cannot add tester with diff passwords
    Given Project Admin is in Project Home Page
    When opens the user module
    And Click on Add tester button
    Then the Add Tester page is displayed
    When enters the full name as '<full name>'
    And enters the full name as '<Username>'
    And enters the password as '<Password>'
    And enters the confirm password as 'Password1'
    And email as '<email>'
    And saves the form
    Then the success message <ErrorMessage>
    And the user is in Add Tester Page

    Examples:
        |full name|Username         |Password|      ErrorMessage|Email|
        |testfulname|Name|Pword|Not a valid user|test@trest.com|
        
 
          Scenario: Project admin cannot add tester with existing
           Given Project Admin is in Project Home Page
           When opens the user module
           And Click on Add tester button
           Then the Add Tester page is displayed
           When enters the full name as 'Tester One'
           And enters the full name as 'TestUser'
           And enters the password as 'Password12'
           And enters the confirm password as 'Password12'
           And email as 'testuser@example.com'
           And saves the form
           Then the success message is shown as dialog
           And the user is in Tester List page
           And Click on Add tester button
          Then the Add Tester page is displayed
          When enters the full name as 'Tester One'
          And enters the full name as 'TestUser'
          And enters the password as 'Password12'
          And enters the confirm password as 'Password12'
          And email as 'testuser@example.com'
          And saves the form
          Then the message shows that the user is already added