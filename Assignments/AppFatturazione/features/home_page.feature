Feature: Home Page

Scenario: User not authenticated
  When I visit the home page
  Then I should see a Sign up link

Scenario: User authenticated
  Given I have an account
  And I am logged in
  When I visit the home page
  Then I should see Manage Clients and Manage Hours links
