Feature: Visitor navigates site
  In order to easily navigate around fitafy
  As a fitafy visitor
  I want UX elements that help me navigate easily

  @focus
  Scenario: Visitor gets to the homepage
    Given I'm on the workouts page
    When I click the fitafy logo
    Then I should be on the homepage