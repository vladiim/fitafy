Feature: Trainer manages workouts
  In order to have lots of workouts for my clients
  As a personal trainer
  I want to be able to manage workouts

  Background:
    When I'm a logged in trainer

  Scenario: Trainer creates new workout
    Given I've created a new workout
    When I go to the new workout's page
    Then I should be able to edit the workout's details
    And I should see the workout owner CTA buttons

  Scenario: Trainer deletes exercise from workout
    Given a workout exercise exists
    And I'm on a workout's page
    When I click delete exercise
    Then that exercise should be removed

  Scenario Outline: Trainer updates a workout
    Given a workout exercise exists
    And I'm on a workout's page
    When I click the workout's <update_button>
    And <form_container> I fill in the workout's <form_element> with <new_detail>
    Then <value_container> I should see the workout's updated <new_detail>

    Examples:
      | update_button        | form_container       |form_element                     | new_detail         | value_container      |
      | "Edit name"          | ".workout_name"      | "workout_name"                  | "NEW NAME"         | "h1"                 |
      | "Edit notes"         | ".workout_notes"     | "workout_notes"                 | "New notes"        | ".workout_notes"     |
      | "Edit instructions"  | ".workout_exercises" | "workout_exercise_instructions" | "NEW INSTRUCTIONS" | ".workout_exercises" |

  Scenario: Trainer deletes workout
    Given a workout exercise exists
    When I delete the workout by clicking "DELETE WORKOUT"
    Then Snapz should give the "That's one dead workout... I'll miss that guy" deleted workout message
    And that workout shouldn't exsist

  Scenario: Trainer adds exercise to workout
    Given another exercise exists
    And a workout exercise exists
    When I click add exercise on the workout's page
    Then that exercise should be added to the workout
    And the exercise is ordered

  Scenario: Trainer sorts alphabetical exercise list
    Given there's alphabetical exercises
    When I visit the new workout page
    Then I should see them in alphabetical order

  Scenario: Trainer creates a copy of another trainer's workout
    Given a workout exercise exists
    When I go to the workout's page
    And click create copy
    Then I should have a copy of the workout I can edit
    And Snapz should let me know I've copied the workout
    And it should copy all the original workout's attributes

  Scenario: Trainer creates pdf of workout
    Given I'm on the workout page
    When I click download as pdf
    Then I should get a pdf

  Scenario Outline: Trainer changes exercise position
    Given I'm a workout page with two exercises
    When I click position <position> on exercise <exercise>
    Then the exercise <exercise_name> order should be <order>
    And the the title number should be <order>

    Examples:
      | position | exercise | order | exercise_name |
      | "up"     | "1"      | "1"   | "one"         |
      | "up"     | "2"      | "1"   | "two"         |
      | "down"   | "1"      | "2"   | "one"         |
      | "down"   | "2"      | "2"   | "two"         |