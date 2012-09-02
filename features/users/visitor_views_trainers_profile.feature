Feature: Visitor Views Trainer Profile
  In order to see a trainer's workouts/preference
  As a fitafy visitor
  I want to be able to look at their profile

  Background:
    Given a trainer exists
    And I'm on the trainer's profile

  Scenario: Visitor looks at trainer's favorite workouts
    Given the trainer has workouts, some of them favorites
    When I click on favorites
    Then I should see their favorites
    And I shouldn't see their other workouts

  Scenario: Visitor can't look at trainer's favorites
    Given the trainer has no favorite workouts
    When I want to look at their favorite workouts
    Then I shouldn't see a link to their favorites