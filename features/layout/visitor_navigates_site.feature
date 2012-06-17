Feature: Visitor navigates site
  In order to easily navigate around fitafy
  As a fitafy visitor
  I want UX elements that help me navigate easily

  @focus
  Scenario: Visitor gets homepage intro
    Given I'm new to fitafy
    When I visit the homepage
    Then I should see a homepage message
    And I should have a CTA to find workouts
    And I should have a CTA to create workouts
    And I should see some trending workouts

  Scenario: Visitor navigates to the homepage
    Given I'm on the workouts page
    When I click the fitafy logo
    Then I should be on the homepage