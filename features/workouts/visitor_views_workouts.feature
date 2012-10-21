Feature: Visitor views workouts
  In order to look at different workouts
  As a fitafy visitor
  I want to be able to find and view workouts

  Background:
    Given a workout exsists

  Scenario: Visitor views an individual workout
    Given I'm on the homepage
    When I'm on a workout's page
    Then I should see that workout's details "NO SAID DATE" and "These military arm' marine. sub machine gun"

  Scenario: Visitor views the workout list
    Given I'm on the homepage
    When I click on the workout's link "WORKOUTS"
    Then I should see a list of workouts
    And I should see how many exercises the workout has


  Scenario: Visitor cant see new workout link
    Given I'm a visitor
    When I visit the homepage
    Then I should see the new workout link

  Scenario: Visitor cant see edit workout link
    Given I'm a visitor
    When I'm on a workout's page
    Then I can't see the edit workout link

  Scenario: Visitor copies workout once logged in
    Given a trainer exists 
    And I'm on a workout's page
    When I click copy workout
    And I log in
    Then I should be back on the workout

  Scenario: Visitor favorites workout once signed up
    Given a trainer exists 
    And I'm on a workout's page
    When I click favorite workout
    And I log in
    Then I should be back on the workout