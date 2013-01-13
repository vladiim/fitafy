Feature: Trainer manages workouts
  In order to have lots of workouts for my clients
  As a personal trainer
  I want to be able to manage workouts

  Background:
    Given I'm a logged in trainer

  Scenario: Trainer creates workout from nav
    Given I'm on the homepage
    When I create a workout from the nav
    Then I should be on the new workouts page

  Scenario: Trainer creates new workout
    Given I've created a new workout
    When I go to the new workout's page
    Then I should be able to edit the workout's details
    And I should see the workout owner CTA buttons

  Scenario: Trainer deletes workout
    Given a workout exercise has been created
    When I delete the workout by clicking "DELETE WORKOUT"
    Then Snapz should give the "That's one dead workout... I'll miss that guy" deleted workout message
    And that workout shouldn't exsist
    And the trainer should still exsist

  Scenario: Trainer creates a copy of another trainer's workout
    Given a workout exercise has been created
    When I go to the workout's page
    And click create copy
    Then I should have a copy of the workout I can edit
    And Snapz should let me know I've copied the workout
    And it should copy all the original workout's attributes

  Scenario: Trainer creates pdf of workout
    Given I'm on the workout page
    When I click download as pdf
    Then I should get a pdf