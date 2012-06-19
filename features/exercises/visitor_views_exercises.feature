Feature: Visitor views exercises
  In order to find out about exercises
  As a fitafy visitor
  I want to be able to look at all the exercise's details

  Scenario: Visitor views an individual exercise
    Given an exercise has been created
    When I visit the exercise's page
    Then I should see that exercise's details

  @focus
  Scenario: Visitor views exercise list alphabetically
    Given there are more than one exercise
    When I visit the exercise list
    Then the exercises should be in alphabetical order

  Scenario: Visitor goes to exercise page from list
    Given there are exercises and I go to the exercise list
    When I click on an exercise
    Then I should be on the exercise's show page

  Scenario: Visitor goes to exercise page from workout
     Given I've gone to a workout show page
     When I click on an exercise in the workout's list
     Then I should go the that exercise's page

  Scenario: Can't build, create, update, delete exercises
  Scenario: Can't see links to create, update, delete exercises