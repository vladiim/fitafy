Feature: Trainer manages exercises
  In order to have lots of workouts for my clients
  As a personal trainer
  I want to be able to manage workouts

  Scenario: Trainer builds new exercise
    Given I want to create a new workout
    When I click the "New Workout" new workout link
    Then Snapz should say "W00t! New workout comin'!" because I'm on a new workout page

  Scenario: Trainer creates workout
    Given I'm on a new workout page
    When I fill in the workout form
    Then Snapz should give the created workout message "New workout! You know sumpin'? The world's a better place"

  Scenario: Trainer fills in the workout form incorrectly
    Given I've filled in the workout form
    When I fill in the workout "workout_name" field with ""
    Then I should get the workout error message "can't be blank"

  @focus
  Scenario: Trainer updates a workout
    Given I'm on an exsisting workout's edit page
    When I change the workout's "workout_name" with "supreme clientel"
    Then I should see the "supreme clientel" on the exercise's page
    And Snapz should say "Snip, snap we update workouts like dat!" to let me know I've updated the workout

  # Scenario: Admin deletes exercise
  #   Given I'm on the edit exercise page
  #   When I delete the exercise by clicking "Delete Exercise"
  #   Then Snapz should give "That exercise is gawn!" deleted exercise message