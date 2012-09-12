Feature: Visitor views equipment
  In order to see equipment details
  As a fitafy visitor
  I want to be able to see equipment

  Background:
    Given equipment exists

  Scenario: Visitor views equipment name on workout page
    Given a workout with the equipment exsists
    When I'm on a workout's page
    Then I should see the workout's equipment name

  Scenario Outline: Visitor can't manage equipment