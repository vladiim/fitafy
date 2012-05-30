 Feature: Admin Manages exercises
  In order to have lots of exercises for our users
  As a fitafy admin
  I want to be able to manage exercises

  Scenario: Admin builds new exercise
    Given I want to create a new exercise
    When I click the "New Exercise" new exercise link
    Then Snapz should say "Creatin' a new exercise? Just give me some deets" because I'm on a new exercise page

  @focus
  Scenario: Admin creates exercise
    Given I'm on a new exercise page
    When I fill in the exercise form
    And I click the create exercise button "Create Exercise"
    Then Snapz should give the created exercise message "Boom! New exercise up in this mo fo!"

  Scenario: Admin gets validation error on title
    Given I'm on a new exercise page
    When I fill in the exercise form
    And I fill in the exercise title with nothing
    And I click the "Create Exercise" button
    Then I should see "can't be blank" on the page

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