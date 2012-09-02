Feature: Trainer Mangaes Favorite Workouts
  In order to keep track of certain workouts
  As a fitafy trainer
  I want to be able to mark and find my favorite workouts

  Scenario: Trainer adds workout to favorite
    Given a workout exsists
    And I'm a logged in trainer
    And I'm on the workout's page
    When I click add workout to favorite
    Then the workout should be added to my favorites
    And snapz should tell me i'v added a workout to my favorite

  Scenario: Trainer removes workout from favorite from workout page

  Scenario: Trainer removes workout from favorite from their profile