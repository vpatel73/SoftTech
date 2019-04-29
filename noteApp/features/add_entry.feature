Feature: add a new user entry

    As a user 
    So that I can easily create an account for the app
    I want to keept logged in
    
Scenario: As a user I want to be able to navigate from homepage to signup page
    Given I am on the home page
    When I click on the "Click here to signup" link
    Then I should be on the "Sign Up" page
    And I should see the "Username" field
    And I should see the "Email" field
    And I should see the "Password" field