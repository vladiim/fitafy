Feature: Trainer manages account
  In order to create, edit and save workouts
  As a fitafy trainer
  I want to be able to have a fitafy account

  @focus
  Scenario: Trainer creates account
    Given I want to create a new fitafy account
    When I click login
    And fill in my details
    Then I should have a new account
    And Snapz should have a message for creating an account

  Scenario: Trainer create account fails