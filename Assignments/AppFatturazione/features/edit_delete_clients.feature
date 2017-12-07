Feature: Edit and Delete Clients
  As a user
  I want to be able to edit or delete my clients information

  Background:
    Given I have an account
    And I am logged in
    And I have a client called "Khal Drogo"
    And I have hours
    And I have billed my client

  Scenario: Edit Successful
    Given I am on my "Client" list
    And I click on "Edit"
    When I change my client's name to "MR Robot_Client"
    And I click on "Submit"
    Then My client should have the new information

  Scenario: Change client email to an already existing done
    Given I am on my "Client" list
    And I click on "Edit"
    When I change the client's email to an already existing one
    And I click on "Submit"
    Then I should see an error message

  Scenario: Change a field to blank
    Given I am on my "Client" list
    And I click on "Edit"
    When I change a field to blank
    And I click on "Submit"
    Then I should see an error message

  @javascript
  Scenario: Delete a client
    Given I am on my clients menu
    When I click on "Destroy"
    And I confirm the popup
    Then I should not see "Khal Drogo" on my client list
    And All the hours associated to that client should be destroyed
    And All the invoices billed to that client should be destroyed
