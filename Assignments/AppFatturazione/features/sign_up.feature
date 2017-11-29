Feature: Sign Up
  As a user
  I want to create my account


  Scenario: Signup successful
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I click on "Submit"
    Then I should create my account

  Scenario: error when leaving name field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Name" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving email field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Email" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving tarif field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Tarif" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving street name field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Street name" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving street number field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Street number" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving city field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "City" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving postal code field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Postal code" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving state field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "State" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving password field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Password" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when leaving password confirmation field blank
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And I leave the "Password confirmation" blank
    And I click on "Submit"
    Then I should see an error message

  Scenario: error when password confirmation does not match password
    Given I am on the home page
    And I click on "Sign Up"
    When I fill in the form with valid data
    And "Password confirmation" does not match "Password"
    And I click on "Submit"
    Then I should see an error message
