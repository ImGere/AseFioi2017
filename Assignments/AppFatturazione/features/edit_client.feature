Feature: Edit Clients
  As a user
  I want to be able to edit my clients information

  Background:
    Given I have an account
    And I am logged in
    And I have clients

  Scenario: Edit Successful
    Given I am on my client list
    And I click on "Edit"
    When I change some information about "the client"
    And I click on "Submit"
    Then My client should have the new information

  Scenario: Change client email to an already existing done
    Given I am on my client list
    And I click on "Edit"
    When I change the client's email to an already existing one
    And I click on "Submit"
    Then I should see an error message

  Scenario: Change a field to blank
    Given I am on my client list
    And I click on "Edit"
    When I change a field to blank
    And I click on "Submit"
    Then I should see an error message
