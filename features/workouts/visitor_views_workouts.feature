Feature: Visitor views workouts
  In order to look at different workouts
  As a fitafy visitor
  I want to be able to find and view workouts

  # @focus
  Scenario: Visitor views an individual workout
    Given a workout exsists
    When I visit the workout's page
    Then I should see that workout's details "No Said Date" and "These military arm' marine. Sub machine gun"

#   Scenario: Visitor views an individual exercise
#     Given an exercise has been created
#     When I visit the exercise's page
#     Then I should see that exercise's details

#   Scenario: Visitor views exercise list alphabetically
#     Given there are more than one exercise
#     When I visit the exercise list
#     Then the exercises should be in alphabetical order

#   Scenario: Can't build, create, update, delete exercises
#   Scenario: Can't see links to create, update, delete exercises