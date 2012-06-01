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

  Scenario: Trainer edits a workout
    Given I want to update a workout's details
    When I'm on the edit workout page
    Then Snapz should give me the "Gonna switch up the workout eh? Nice... nice" edit workout message

  Scenario: Trainer fills in the workout form incorrectly
    Given I've filled in the workout form
    When I fill in the workout "workout_name" field with ""
    Then I should get the workout error message "can't be blank"

  Scenario: Trainer updates a workout
    Given I'm on an exsisting workout's edit page
    When I change the workout's "workout_name" with "supreme clientel"
    Then I should see the "supreme clientel" on the workouts's page
    And Snapz should say "Snip, snap we update workouts like dat!" to let me know I've updated the workout

  @focus
  Scenario: Trainer deletes workout
    Given I'm on the edit workout page
    When I delete the workout by clicking "Delete Workout"
    Then Snapz should give the "That's one dead workout... I'll miss that guy" deleted workout message