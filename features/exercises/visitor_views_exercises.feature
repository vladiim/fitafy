Feature: Visitor views exercises
  In order to find out about exercises
  As a fitafy visitor
  I want to be able to look at all the exercise's details

  Background:
    Given there is an exercise

  Scenario: Visitor views an individual exercise
    Given I find an exercise
    When I visit the exercise's page
    Then I should see that exercise's details

  Scenario: Visitor views exercise list
    Given there are more than one exercise
    When I visit the exercise list
    Then I see the exercise's details

  Scenario: Visitor goes to exercise page from list
    Given I'm on the exercises page
    When I click on an exercise
    Then I should be on the exercise's show page

  Scenario: Visitor goes to exercise page from workout
     Given I've gone to a workout show page
     When I click on an exercise in the workout's list
     Then I should go the that exercise's page

  Scenario: Visitor can't see new exercise links
    Given I'm not an administrator
    When I go to the homepage
    Then I shouldn't see links to exercises

  Scenario: Visitor can't visit new exercise pages
    Given I'm not an administrator
    When I visit the new exercise path
    Then I should get an unauthorized message

  Scenario: Visitor can't see edit exercise link
    Given I'm not an administrator
    When I visit an exercise's page
    Then I should not see the edit exercise link