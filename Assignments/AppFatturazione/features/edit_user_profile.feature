Feature: Edit profile
  As a user
  I want to be able to edit my profile

  Background:
    Given I have an account
    And I am logged in

  Scenario: Update Successful
    Given I am on my profile
    And I click on "Edit"
    When I change some information about "my profile"
    And I click on "Submit"
    Then My profile should have the new information

  Scenario: Change user email to an already existing done
    Given I am on my profile
    And I click on "Edit"
    When I change the user's email to an already existing one
    And I click on "Submit"
    Then I should see an error message

  Scenario: Change a field to blank
    Given I am on my profile
    And I click on "Edit"
    When I change a field to blank
    And I click on "Submit"
    Then I should see an error message
