Feature: Trainer manages account
  In order to create, edit and save workouts
  As a fitafy trainer
  I want to be able to have a fitafy account

  Background:
    Given I have an account
    And I'm sigen in

  Scenario: Trainer creates account
    Given I'm not logged in
    When I click sign up
    And fill in my details
    Then I should have a new account
    And Snapz should have a message for creating an account

  Scenario: Trainer has profile page
    Given I'm signed in
    When I visit my profile page
    Then I should see my account details

  Scenario: Trainer edits profile
    Given I'm signed in
    When I edit my profile
    Then my profile should change
    And Snapz should give me a message

  Scenario: Trainer deletes profile
    Given I'm signed in
    And on my profile page
    When I click delete account
    Then my account will be permanantly deleted
    