Feature: Visitor views workouts
  In order to look at different workouts
  As a fitafy visitor
  I want to be able to find and view workouts

  Scenario: Visitor views an individual workout
    Given a workout exsists
    When I visit the workout's page
    Then I should see that workout's details "NO SAID DATE" and "These military arm' marine. sub machine gun"

  Scenario: Visitor views the workout list
    Given there are workouts
    When I click on the workout's link "WORKOUTS"
    Then I should see a list of workouts
    And I should see how many exercises the workout has

  Scenario: Vistor filters workouts by name
    Given I'm on the workouts page with workouts
    When I click view by name
    Then the workouts should be ordered by name

  Scenario: Visitor clicks link to workout from list
    Given there are workouts
    When I visit the list of workouts
    Then I can click on the workout "Zno Said Date"
    And I will be on that workout's page

  Scenario: Visitor cant see new workout link
    Given I'm a visitor
    When I visit the homepage
    Then I should see the new workout link