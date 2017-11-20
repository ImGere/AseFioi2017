Feature: Hour List
  As a user
  I want to be able to see a list of all the hours I have done


  Background:
    Given I have an account
    And I am logged in

  Scenario: The hour list is not empty
    Given I have hours
    When I visit the hours page
    Then I should see my hour list
