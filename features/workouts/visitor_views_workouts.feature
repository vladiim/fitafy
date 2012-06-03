Feature: Visitor views workouts
  In order to look at different workouts
  As a fitafy visitor
  I want to be able to find and view workouts

  Scenario: Visitor views an individual workout
    Given a workout exsists
    When I visit the workout's page
    Then I should see that workout's details "No Said Date" and "These military arm' marine. sub machine gun"

  Scenario: Visitor views the workout list
    Given there are workouts
    When I click on the workout's link "Workouts"
    Then I should see a list of workouts
    And the "Latest Workouts" latest workouts should be listed by default

  @focus
  Scenario: Visitor clicks link to workout from list
    Given there are workouts
    When I visit the list of workouts
    Then I can click on the workout "No Said Date"
    And I will be on that workout's page

  Scenario: Can't build, create, update, delete workouts