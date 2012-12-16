Feature: Trainer Mangaes Favorite Workouts
  In order to keep track of certain workouts
  As a fitafy trainer
  I want to be able to mark and find my favorite workouts

  Background:
    Given a workout exsists
    And I'm a logged in trainer

  Scenario: Trainer adds workout to favorite
    Given I'm on a workout's page
    When I click add workout to favorite
    Then the workout should be added to my favorites
    And snapz should tell me I've added a workout to my favorite

  Scenario: Trainer removes workout from favorite from workout page
    Given I've favorited a workout
    And I'm on a workout's page
    When I click remove favorite
    Then the workout shouldn't be one of my favorites
    And snapz should tell me I've relmoved the workout from my favorites