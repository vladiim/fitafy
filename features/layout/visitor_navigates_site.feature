Feature: Visitor navigates site
  In order to easily navigate around fitafy
  As a fitafy visitor
  I want UX elements that help me navigate easily

  Scenario: Visitor reads fitafy USP on homepage
    Given I've never been to fitafy before
    When I visit the homepage (usp)
    Then I should see the fitafy USP message
    And I should get a CTA to find workouts
    And I should get a CTA to create workouts

  Scenario: Visitor navigates to the homepage
    Given I'm on the workouts page
    When I click the fitafy logo
    Then I should be on the homepage

  Scenario: Visitor views trainer page
    Given I'm on a workout
    When I click the trainer's name
    Then I should be on the trainer's profile
    And I should see the trainer's stats
    And I should see the trainer's workouts