Feature: Trainer manages account
  In order to create, edit and save workouts
  As a fitafy trainer
  I want to be able to have a fitafy account

  Scenario: Trainer creates account
    Given I want to create a new fitafy account
    When I click sign up
    And fill in my details
    Then I should have a new account
    And Snapz should have a message for creating an account

  @focus
  Scenario: Trainer create account fails
    Given I've filled my sign up details wrong
    When I try to sign up
    Then I should get a sign up fail message