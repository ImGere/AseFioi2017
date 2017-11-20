Feature: Sign Up
  As a user
  I want to create my account

  Scenario: Signup successful
    Given I am on the home page
    When I click on Sign up
    And I fill in the signup form with valid data
    Then I should create my account

  Scenario: error when leaving name field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the name blank
    Then I should see an error message

  Scenario: error when leaving email field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the email blank
    Then I should see an error message

  Scenario: error when leaving tarif field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the tarif blank
    Then I should see an error message

  Scenario: error when leaving street name field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the street name blank
    Then I should see an error message

  Scenario: error when leaving street number field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the street number blank
    Then I should see an error message

  Scenario: error when leaving city field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the city blank
    Then I should see an error message

  Scenario: error when leaving postal code field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the postal code blank
    Then I should see an error message

  Scenario: error when leaving state field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the state blank
    Then I should see an error message

  Scenario: error when leaving password field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the password blank
    Then I should see an error message

  Scenario: error when leaving password confirmation field blank
    Given I am on the home page
    When I click on Sign up
    And I leave the password confirmation blank
    Then I should see an error message

  Scenario: error when password confirmation does not match password
    Given I am on the home page
    When I click on Sign up
    And Password confirmation does not match password
    Then I should see an error message
