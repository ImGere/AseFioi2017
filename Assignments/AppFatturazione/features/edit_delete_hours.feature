Feature: Edit and Delete Hours
  As a user
  I want to be able to edit information about hours that I have worked

  Background:
    Given I have an account
    And I am logged in
    And I have a client called "Khal Drogo"
    And I have hours

  Scenario: Edit Successful
    Given I am on my "Hour" list
    And I want to edit an hour
    When I change the "Description" of an activity to "New Description"
    And I click on "Submit"
    Then My hour should have the new description "New Description"

  Scenario: End Time before Start Time
    Given I am on my "Hour" list
    And I want to edit an hour
    When The new End time comes before Start time
    And I click on "Submit"
    Then I should see an error message

  Scenario: Description field blank
    Given I am on my "Hour" list
    And I want to edit an hour
    When I change the "Description" to empty
    And I click on "Submit"
    Then I should see an error message

  Scenario: Client field blank
    Given I am on my "Hour" list
    And I want to edit an hour
    When I change the client field to empty
    And I click on "Submit"
    Then I should see an error message

  @javascript
  Scenario: Delete an unbilled hour
    Given I am on my hours menu
    When I click on "Destroy" hour
    And I confirm the popup
    Then I should not see that hour on my hour list

  @javascript
  Scenario: Delete a billed hour
    Given I have billed my client
    And I am on my hours menu
    When I click on "Destroy" hour
    And I confirm the popup
    Then I should get "Warning! You cannot delete a billed hour."
