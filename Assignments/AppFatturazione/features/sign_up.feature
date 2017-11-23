Feature: Sign Up
  As a user
  I want to create my account

  Scenario: Signup successful
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the signup form with valid data
    And I click on "Submit"
    Then I should create my account

  Scenario: error when leaving name field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the name blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving email field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the email blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving tarif field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the tarif blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving street name field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the street name blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving street number field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the street number blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving city field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the city blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving postal code field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the postal code blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving state field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the state blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving password field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the password blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving password confirmation field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I leave the password confirmation blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when password confirmation does not match password
    Given I am on the home page
    And I click on "Sign Up"
    When Password confirmation does not match password
    And I click on "Submit"
    Then I should see an error message
