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

  Scenario: Visitor views exercise list alphabetically
    Given there are more than one exercise
    When I visit the exercise list
    Then the exercises should be in alphabetical order

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
<<<<<<< HEAD
    Then I should not see the edit exercise link

  Scenario: Visitor filters by multiple tags
    Given more than one exercise
    When I click on more than one tag
    Then I should see the exercise filtered by the tags

  @focus
  Scenario: Visitor removes a tag from the filter
    Given a filtered list of exercises
    When I click remove tag
    Then the exercises shouldn't be filtered by that tag
=======
    Then I should not see the edit exercise link
>>>>>>> branch2
