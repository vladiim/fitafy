Feature: Visitor navigates site
  In order to easily navigate around fitafy
  As a fitafy visitor
  I want UX elements that help me navigate easily

<<<<<<< HEAD
<<<<<<< HEAD
  @focus
  Scenario: Visitor gets homepage intro
    Given I'm new to fitafy
    When I visit the homepage
    Then I should see a homepage message
    And I should have a CTA to find workouts
    And I should have a CTA to create workouts
    And I should see some trending workouts
=======
=======
>>>>>>> branch
  Scenario: Visitor reads fitafy USP on homepage
    Given I've never been to fitafy before
    When I visit the homepage
    Then I should see the fitafy USP message
    And I should get a CTA to find workouts
    And I should get a CTA to create workouts

  @focus
  Scenario: Visitor sees trending workouts on homepage  
<<<<<<< HEAD
>>>>>>> branch
=======
>>>>>>> branch

  Scenario: Visitor navigates to the homepage
    Given I'm on the workouts page
    When I click the fitafy logo
    Then I should be on the homepage