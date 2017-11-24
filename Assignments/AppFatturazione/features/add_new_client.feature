Feature: Add new client
  As a user
  I want to be able to add new clients

  Background:
    Given I have an account
    And I am logged in

  Scenario: Client addition successful
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with valid data
    And I click on "Submit"
    Then I should see the new client at the bottom of the client list

  Scenario: Name field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank name
    And I click on "Submit"
    Then I should see an error message

  Scenario: Codice fiscale field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank codice fiscale
    And I click on "Submit"
    Then I should see an error message

  Scenario: Email field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank email
    And I click on "Submit"
    Then I should see an error message

  Scenario: Partita iva field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank partita iva
    And I click on "Submit"
    Then I should see an error message

  Scenario: Street name field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank street name
    And I click on "Submit"
    Then I should see an error message

  Scenario: Street number field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank street number
    And I click on "Submit"
    Then I should see an error message

  Scenario: City field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank city
    And I click on "Submit"
    Then I should see an error message

  Scenario: Postal code field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank postal code
    And I click on "Submit"
    Then I should see an error message

  Scenario: State field blank
    Given I am on my client list
    And I click on "New Client"
    When I fill in the add new client form with a blank state
    And I click on "Submit"
    Then I should see an error message
