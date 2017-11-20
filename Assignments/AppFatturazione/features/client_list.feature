Feature: Client List
  As a user
  I want to be able to see a list of all my clients

  Background:
    Given I have an account
    And I am logged in

  Scenario: The client list is not empty
    Given that I have clients
    When I visit the clients page
    Then I should see my client list

  Scenario: The client list is empty
    Given that I don't have any clients
    When I visit the clients page
    Then I should see an empty list
