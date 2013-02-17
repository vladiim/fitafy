Feature: Visitor triggers popularity
  In order to understand how popular workouts are
  As a fitafy admin
  I want to measure the popularity of workouts

  Scenario: Visitor views the workout
    Given a workout exsists
    When I visit the workout page
    Then the workout's view popularity number increases

  @focus
  Scenario: Visitor interacts with the workout
    Given a workout exsists
    And I'm on thw workout page
    When I click a <cta> workout cta
    Then the workout popularity <unit> increases

    Examples:
      | cta                | unit             |
      | 'COPY WORKOUT'     | :copies          |
      | 'ADD TO FAVORITES' | :favorites       |
      | 'DOWNLOAD AS PDF'  | :pdfs_downloaded |

  Scenario: Signed up member visits workout

  Scenario: CREATE MIGRATION THAT ADDS WORKOUT_POPULARITY TO WORKOUTS
    Given blah
    When lala
    Then jar