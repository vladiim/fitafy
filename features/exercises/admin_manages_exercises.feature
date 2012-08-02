Feature: Admin Manages exercises
  In order to have lots of exercises for our users
  As a fitafy admin
  I want to be able to manage exercises

  Scenario: Admin builds new exercise
    Given I want to create a new exercise
    When I click the "NEW EXERCISE" new exercise link
    Then Snapz should say "Creatin' a new exercise? Just give me some deets" because I'm on a new exercise page

  @focus
  Scenario: Admin creates exercise
    Given I'm on a new exercise page
    When I fill in the exercise form
    Then Snapz should give the created exercise message "Boom! New exercise up in this mo fo!"

  Scenario: Admin fills in the exercise form incorrectly
    Given I'm creating a new exercise
    When I fill in the exercise name with a blank field
    Then I should get the exercise error message "can't be blank" on the "exercise_name"

  Scenario: Admin updates an exercise
    Given I'm on an exsisting exercise's edit page
    When I change the exercise's "exercise_name" with "shabazz"
    Then I should see the "SHABAZZ" on the exercise's page
    And Snapz should say "Man you updated the smack outta that exercise!" to let me know I've updated the exercise

  Scenario: Admin deletes exercise
    Given I'm on the edit exercise page
    When I delete the exercise by clicking "DELETE EXERCISE"
    Then Snapz should give "That exercise is gawn!" deleted exercise message