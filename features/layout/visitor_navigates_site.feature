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

  Scenario: Visitor sees trending workouts on homepage
    Given I need incentive to click on
    When I visit the homepage (trend)
    Then I should see trending workouts

  Scenario: Visitor navigates to the homepage
    Given I'm on the workouts page
    When I click the fitafy logo
    Then I should be on the homepage