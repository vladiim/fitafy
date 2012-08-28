Feature: Trainer manages exercises
  In order to have lots of workouts for my clients
  As a personal trainer
  I want to be able to manage workouts

  Background:
    When I'm a logged in trainer

  Scenario: Trainer builds new workout
    Given I want to create a new workout
    When I click the "NEW WORKOUT" new workout link
    Then Snapz should say "W00t! New workout comin'!" because I'm on a new workout page

  Scenario: Trainer creates workout
    Given I'm on a new workout page
    When I fill in the workout form
    Then Snapz should give the created workout message "New workout! You know sumpin'? The world's a better place"
    And I can see the workout name

  Scenario: Trainer edits a workout
    Given a workout exercise exists
    When I'm on the edit workout page
    Then Snapz should give me the "Gonna switch up the workout eh? Nice... nice" edit workout message

  Scenario: Trainer deletes exercise from workout
    Given a workout exercise exists
    And I'm on the workout's page
    When I click delete exercise
    Then that exercise should be removed

  Scenario: Trainer updates a workout
    Given a workout exercise exists
    And I'm on the edit workout page
    When I change the workout's "workout_name" with "SUPREME CLIENTEL"
    Then I should see "SUPREME CLIENTEL" on the workouts's page
    And Snapz should say "Snip, snap we update workouts like dat!" to let me know I've updated the workout

  Scenario: Trainer deletes workout
    Given a workout exercise exists
    And I'm on the edit workout page
    When I delete the workout by clicking "DELETE WORKOUT"
    Then Snapz should give the "That's one dead workout... I'll miss that guy" deleted workout message
    And that workout shouldn't exsist

  Scenario Outline: Trainer sorts exercise list
    Given there's exercises
    And I'm creating a new workout
    When I click <sort>
    Then I should see <true_name>
    And I shouldn't see <false_name>

    Examples:
      | sort        | true_name         | false_name          |
      | "ABS"       | "Abs Title"       | "Back Title"        |
      | "BACK"      | "Back Title"      | "Bicep Title"       |
      | "BICEPS"    | "Biceps Title"    | "Chest Title"       |
      | "CHEST"     | "Chest Title"     | "Forearms Title"    |
      | "FOREARMS"  | "Forearms Title"  | "Legs Title"        |
      | "LEGS"      | "Legs Title"      | "Lower Back Title"  |
      | "SHOULDERS" | "Shoulders Title" | "Tricep Title"      |
      | "TRICEP"    | "Tricep Title"    | "Ab Title"          |

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

  Scenario: Trainer can't see edit workout link for another trainer's workout
    Given a workout exercise exists
    When I go to the workout's page
    Then I shouldn't see the edit workout link

  Scenario: trainer filters by multiple tags
    Given more than one exercise
    And I'm a logged in trainer
    And I'm on the new workout page
    When I click on more than one tag
    Then I should see the exercise filtered by the tags

  Scenario: trainer clicks tag twice
    Given more than one exercise
    And I'm a logged in trainer
    And I'm on the new workout page
    When I click on the same tag twice
    Then the tag should only appear in the params once

  @focus
  Scenario: trainer removes exercise tag
    Given more than one exercise
    And I'm a logged in trainer
    And I'm on the new workout page
    When I click on a tag
    And I click remove tag
    Then the tag shouldn't be in the url