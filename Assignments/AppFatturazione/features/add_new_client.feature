Feature: Add new client
  As a user
  I want to be able to see a list of all my clients

  Background:
    Given I have an account
    And I am logged in

  Scenario: Client addition successful
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with valid data
    Then I should see the new client at the bottom of the client list

  Scenario: Name field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank name
    Then I should see an error message

  Scenario: Codice fiscale field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank codice fiscale
    Then I should see an error message

  Scenario: Email field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank email
    Then I should see an error message

  Scenario: Partita iva field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank partita iva
    Then I should see an error message

  Scenario: Street name field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank street name
    Then I should see an error message

  Scenario: Street number field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank street number
    Then I should see an error message

  Scenario: City field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank city
    Then I should see an error message

  Scenario: Postal code field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank postal code
    Then I should see an error message

  Scenario: State field blank
    Given I am on my client list
    And I click on New Client
    When I fill in the add new client form with a blank state
    Then I should see an error message
