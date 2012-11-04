Feature: Facebook Trainer manages account
  In order to create, edit and save workouts
  As a fitafy trainer signed in through Facebook
  I want to be able to have a fitafy account

  Scenario: Facebook Trainer signs up
    Given I have an exsisting Facebook account
    When I click sign in with Facebook
    Then I should have a new Facebook fitafy account
    And my Facebook name should be in the navbar

  Scenario: Facebook Trainer logs back in
    Given I've signed in through Facebook
    And I log out
    When I click sign in with Facebook
    Then I should be signed back in through Facebook

  Scenario Outline: Facebook Trainer name is unique
    Given a trainer exsists with the <facebook_name>
    When I sign in through facebook with the same <facebook_name>
    Then my username is changed to a <new_username>

    Examples:
      | facebook_name       | new_username        |
      | "facebook-name"     | "facebook-name-1"   |
      | "facebook-name-1"   | "facebook-name-2"   |
      | "facebook-name-2"   | "facebook-name-3"   |
      | "facebook-name-13"  | "facebook-name-14"  |
      | "facebook-name-345" | "facebook-name-346" |

  Scenario: Facebook Trainer can view exercises
    Given I've signed in through Facebook
    And I'm on a workout page
    When I go to visit an exercise
    Then I should be able to see that exercise

  Scenario: Facebook Trainer logs out on first go
    Given I've signed in through Facebook
    When I click logout
    Then I shouldn't be logged in anymore