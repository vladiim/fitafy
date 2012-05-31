 Feature: Admin Manages exercises
  In order to have lots of exercises for our users
  As a fitafy admin
  I want to be able to manage exercises

  Scenario: Admin builds new exercise
    Given I want to create a new exercise
    When I click the "New Exercise" new exercise link
    Then Snapz should say "Creatin' a new exercise? Just give me some deets" because I'm on a new exercise page

  Scenario: Admin creates exercise
    Given I'm on a new exercise page
    When I fill in the exercise form
    Then Snapz should give the created exercise message "Boom! New exercise up in this mo fo!"

  Scenario Outline: Admin fills in the exercise form incorectly
    Given I've filled in an exercise form
    When I fill in the exercise "<field>" with "<value>"
    And I click the create exercise button "Create Exercise"
    Then I should get the exercise error message "<error>" on the "<field>"

    Scenarios: blank input
      | field                  | value | error            |
      | "exercise_name"        | ""    | "can't be blank" |
      | "exercise_description" | ""    | "can't be blank" |

  Scenario Outline: Admin updates an exercise
    Given I'm on an exsisting exercise's edit page
    When I change the exercise's "<field>" with "<value>"
    And I click the create exercise button "Create Exercise"
    Then I should see the "<value>"
    And Snapz should say "Man you updated the smack outta that exercise!" to let me know I've updated the exercise

    Scenarios: update exercise attribute
      | field | value |
      | "exercise_name" | "sunz of man" |
      | "exercise_description" | "60 second assasin" |
      | "exercise_tips" | "hell razah" |
      | "exercise_categories" | "shabazz" |
      | "exercise_equipment" | "prodigal sunn" |

  Scenario: Admin deletes exercise
    Given I'm on the edit exercise page
    When I delete the exercise by clicking "Delete Exercise"
    Then Snapz should give "That exercise is gawn!" deleted exercise message

  Scenario: Admin update exercise
    Given I'm on an exercise's update section
    When I've changed the title to "supreme clientel"
    And clicked "Update Exercise"
    Then I should see the new "Supreme Clientel" title
    And Snapz should give "Man you updated the smack outta that exercise!" updated exercise message