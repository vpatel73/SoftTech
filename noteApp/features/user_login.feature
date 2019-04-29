Feature: login back in app

    As a user 
    So that I can easily login back to my account for the app
    I want to keept logged in
    
Scenario: As a user I want to be able to navigate from homepage to login page
    Given I am on the home page
    When I click on the "Already have an account" link
    Then I should be on the "Sign In" page
    And I should see the "Email" field
    And I should see the "Password" field