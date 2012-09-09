Feature: Visitor views workouts
  In order to look at different workouts
  As a fitafy visitor
  I want to be able to find and view workouts

  Background:
    Given a workout exsists

  Scenario: Visitor views an individual workout
    Given I'm on the homepage
    When I'm on a workout's page
    Then I should see that workout's details "NO SAID DATE" and "These military arm' marine. sub machine gun"

  Scenario: Visitor views the workout list
    Given I'm on the homepage
    When I click on the workout's link "WORKOUTS"
    Then I should see a list of workouts
    And I should see how many exercises the workout has

  Scenario Outline: Vistor sorts workouts
    Given there's workouts 
    And I'm on the workouts page with workouts
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


  Scenario: Visitor cant see new workout link
    Given I'm a visitor
    When I visit the homepage
    Then I should see the new workout link

  Scenario: Visitor cant see edit workout link
    Given I'm a visitor
    When I'm on a workout's page
    Then I can't see the edit workout link

  Scenario: Visitor copies workout once logged in
    note - create log in & sign up as modal (like in wires) to acheive this
    Given a trainer exists 
    And I'm on a workout's page
    When I click copy workout
    And I log in
    Then I should be back on the workout

  @focus
  Scenario: Visitor favorites workout once signed up
    Given I'm on a workout's page
    When I click favorite workout
    And I sign up
    Then I should be back on the workout