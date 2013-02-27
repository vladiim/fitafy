Feature: Visitor navigates site
  In order to easily navigate around fitafy
  As a fitafy visitor
  I want UX elements that help me navigate easily

  Scenario: Visitor views trainer page
    Given I'm on a workout
    When I click the trainer's name
    Then I should be on the trainer's profile
    And I should see the trainer's stats
    And I should see the trainer's workouts

  Scenario: Visitor views workout page
    Given a workout exsists
    And I'm on the homepage
    When I click on a workout
    Then I see the visitor workout