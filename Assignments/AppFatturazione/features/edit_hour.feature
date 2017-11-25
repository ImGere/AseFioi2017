Feature: Edit Clients
  As a user
  I want to be able to edit information about hours that I have worked

  Background:
    Given I have an account
    And I am logged in
    And I have clients
    And I have hours

  Scenario: Edit Successful
    Given I am on my hour list
    And I click on "Edit"
    When I change some information about the hour
    And I click on "Submit"
    Then My hour should have the new information

  Scenario: End Time before Start Time
    Given I am on my hour list
    And I click on "Edit"
    When I insert and End Time that comes before Start Time
    And I click on "Submit"
    Then I should see an error message

  Scenario: Description field blank
    Given I am on my hour list
    And I click on "Edit"
    When I change the description field to empty
    And I click on "Submit"
    Then I should see an error message

  Scenario: Client field blank
    Given I am on my hour list
    And I click on "Edit"
    When I change the Client field to empty
    And I click on "Submit"
    Then I should see an error message
