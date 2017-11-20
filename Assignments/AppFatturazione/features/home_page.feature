Feature: Home Page

Background:
  Given I have an account
  And I am logged in

Scenario: User authenticated
  When I visit the home page
  Then I should see Manage Clients and Manage Hours links

Scenario: User not authenticated
  Given I am a non authenticated user
  When I visit the home page
  Then I should see a Sign up link
