Feature: Statistics
  As a user
  I want to view statistics about activities I've worked on, how much I've
  billed for every client and how much I've billed daily/monthly

  Background:
    Given I have an account
    And I am logged in

  Scenario: I don't have clients
    When I click on "Statistics"
    Then I should see an empty "clients" list message

  Scenario: I have at least one client
    Given I have clients
    And I have hours
    And I have billed at least one invoice
    When I click on "Statistics"
    Then I should see how much I've billed for every client

  Scenario: I don't have hours
    When I click on "Statistics"
    Then I should see an empty "hours" list message

  Scenario: I have at least one hour
    Given I have clients
    And I have hours
    When I click on "Statistics"
    Then I should see the total amount of hours worked and billed

  Scenario: No invoices created
    When I click on "Statistics"
    Then I should see an empty "invoices" list message

  Scenario: I have created at least one invoice
    Given I have clients
    And I have hours
    And I have billed at least one invoice
    When I click on "Statistics"
    Then I should see the information about the invoices displayed on the page
