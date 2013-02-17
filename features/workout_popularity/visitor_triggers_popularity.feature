Feature: Visitor triggers popularity
  In order to understand how popular workouts are
  As a fitafy admin
  I want to measure the popularity of workouts

  Scenario: Visitor views the workout
    Given a workout exsists
    When I visit the workout page
    Then the workout's view popularity number increases

  Scenario Outline: Visitor interacts with the workout
    Given a workout exsists
    And I'm a logged in trainer
    And I'm on a workout's page
    When I click a <cta> workout cta
    Then the workout popularity <unit> increases

    Examples:
      | cta                | unit              |
      | "CREATE COPY"      | "copies"          |
      | "ADD TO FAVORITES" | "favorites"       |
      | "DOWNLOAD AS PDF"  | "pdfs_downloaded" |

  Scenario: Signed up member visits workout