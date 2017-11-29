Feature: Add new hour
  As a user
  I want to be able to add new hours

  Background:
    Given I have an account
    And I am logged in
    And I have clients

  Scenario: Hour addition successful
    Given I am on my "Hour" list
    And I click on "New Hour"
    When I fill in the hour form with valid data
    And I click on "Submit"
    Then I should see the details of the new hour

  Scenario: Error when end time is before starting time
    Given I am on my "Hour" list
    And I click on "New Hour"
    When I fill in the hour form with an end time that comes before starting time
    And I click on "Submit"
    Then I should see an error message

  Scenario: Description field blank
    Given I am on my "Hour" list
    And I click on "New Hour"
    When I fill in the hour form with an empty description field
    And I click on "Submit"
    Then I should see an error message

  Scenario: Client field blank
    Given I am on my "Hour" list
    And I click on "New Hour"
    When I fill in the hour form with an empty client field
    And I click on "Submit"
    Then I should see an error message
