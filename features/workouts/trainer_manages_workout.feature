Feature: Trainer manages exercises
  In order to have lots of workouts for my clients
  As a personal trainer
  I want to be able to manage workouts

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
    Given I want to update a workout's details
    When I'm on the edit workout page
    Then Snapz should give me the "Gonna switch up the workout eh? Nice... nice" edit workout message

  Scenario: Trainer updates a workout
    Given I'm on an exsisting workout's edit page
    When I change the workout's "workout_name" with "SUPREME CLIENTEL"
    Then I should see "SUPREME CLIENTEL" on the workouts's page
    And Snapz should say "Snip, snap we update workouts like dat!" to let me know I've updated the workout

  @focus
  Scenario: Trainer deletes workout
    Given There's a workout
    When I delete the workout by clicking "DELETE WORKOUT"
    Then Snapz should give the "That's one dead workout... I'll miss that guy" deleted workout message

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
    And I'm going to create a workout
    When I sort the exercises
    Then I should see them in alphabetical order