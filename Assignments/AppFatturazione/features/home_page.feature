Feature: Home Page


Scenario: User not authenticated
Given I'm a non authenticated user
When I visit the home page
Then I should see Home, Sign up and Log in links
