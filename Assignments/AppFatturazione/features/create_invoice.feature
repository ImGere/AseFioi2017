Feature: Create an invoice
  As a user
  I wanto to be able to bill my clients for the activities that I've worked on

  Background:
    Given I have an account
    And I am logged in
    And I have clients
    And I have hours

  Scenario: Invoice created successfully
    Given I am on my "Client" list
    And I click on "Show"
    When I select the hours I want to bill
    And I click on "Create bill"
    Then My invoice should be created successfully

  Scenario: No hours selected
    Given I am on my "Client" list
    And I click on "Show"
    And I click on "Create bill"
    Then I should get "Warning! You need to at least check one hour"
