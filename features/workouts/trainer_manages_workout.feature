Feature: Trainer manages exercises
  In order to have lots of workouts for my clients
  As a personal trainer
  I want to be able to manage workouts

  @focus
  Scenario: Trainer builds new exercise
    Given I want to create a new workout
    When I click the "New Workout" new workout link
    Then Snapz should say "W00t! New workout comin'!" because I'm on a new workout page

  # Scenario: Admin creates exercise
  #   Given I'm on a new exercise page
  #   When I fill in the exercise form
  #   Then Snapz should give the created exercise message "Boom! New exercise up in this mo fo!"

  # Scenario: Admin fills in the exercise form incorrectly
  #   Given I've filled in the exercise form
  #   When I fill in the exercise "exercise_name" field with ""
  #   Then I should get the exercise error message "can't be blank" on the "exercise_name"

  # Scenario: Admin updates an exercise
  #   Given I'm on an exsisting exercise's edit page
  #   When I change the exercise's "exercise_name" with "shabazz"
  #   Then I should see the "shabazz" on the exercise's page
  #   And Snapz should say "Man you updated the smack outta that exercise!" to let me know I've updated the exercise

  # Scenario: Admin deletes exercise
  #   Given I'm on the edit exercise page
  #   When I delete the exercise by clicking "Delete Exercise"
  #   Then Snapz should give "That exercise is gawn!" deleted exercise message