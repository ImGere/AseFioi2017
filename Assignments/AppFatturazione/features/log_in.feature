Feature: Log In
  As a user
  I want to be able to log in to my account

  Background:
    Given I have an account

  Scenario: Login successful
    Given I am on the login page
    When I fill in the login form with valid data
    Then I should be able to access my account

  Scenario: Email field blank
    Given I am on the login page
    When I leave the email field blank
    Then I should get an error message

  Scenario: Password field blank
    Given I am on the login page
    When I leave the password field blank
    Then I should get an error message

  Scenario: Invalid email
    Given I am on the login page
    When I enter an invalid email
    Then I should get an error message

  Scenario: Invalid password
    Given I am on the login page
    When I enter an invalid password
    Then I should get an error message
