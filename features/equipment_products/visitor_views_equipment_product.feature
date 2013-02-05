Feature: Visitor views equipment product
  In order to buy equipment related to an exercise
  As a fitafy visitor
  I want to see equipment for sale when I look at an exercise

  Background:
    Given there is an exercise
    And the exercise has related equipment products

  # @focus
  # Scenario: Visitor views exercise products
  #   Given I find an exercise
  #   When I visit the exercise's page
  #   Then I should see products related to the exercise