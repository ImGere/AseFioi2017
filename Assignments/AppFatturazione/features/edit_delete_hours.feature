Feature: Edit Clients
  As a user
  I want to be able to edit information about hours that I have worked

  Background:
    Given I have an account
    And I am logged in
    And I have clients
    And I have hours

  Scenario: Edit Successful
    Given I am on my "Hour" list
    And I click on "Edit"
    When I change the "Description" of an activity to "New Description"
    And I click on "Submit"
    Then My hour should have the new description "New Description"

  Scenario: End Time before Start Time
    Given I am on my "Hour" list
    And I click on "Edit"
    When The new End time comes before Start time
    And I click on "Submit"
    Then I should see an error message

  Scenario: Description field blank
    Given I am on my "Hour" list
    And I click on "Edit"
    When I change the "Description" to empty
    And I click on "Submit"
    Then I should see an error message

  Scenario: Client field blank
    Given I am on my "Hour" list
    And I click on "Edit"
    When I change the client field to empty
    And I click on "Submit"
    Then I should see an error message
