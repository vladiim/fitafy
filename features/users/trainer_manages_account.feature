Feature: Trainer manages account
  In order to create, edit and save workouts
  As a fitafy trainer
  I want to be able to have a fitafy account

  Background:
    Given I have an account
    And I'm signed in

  Scenario: Trainer creates account
    Given I'm not logged in
    When I click sign up
    And fill in my details
    Then I should have a new account
    And Snapz should have a message for creating an account
    And I should get a sign up email

  Scenario: Trainer agrees to terms & conditions

  Scenario: Trainer forgets password

  Scenario: Trainer has profile page
    Given I'm on the hompage
    When I visit my profile page
    Then I should see my account details

  Scenario: Trainer edits profile
    Given I edit my profile
    Then my profile should change
    And Snapz should give me a message

  Scenario: Trainer deletes profile
    Given on my edit profile page
    When I click delete account
    Then my account will be permanantly deleted

  Scenario: Trainer signs up through Facebook
    Given I'm a new trainer
    And I have a Facebook account
    When I click sign in with Facebook
    Then I should have a new fitafy account
    And my profile should have my Facebook name as my username

  Scenario: Trainer logs back in with Facebook
    Given I log out
    And I've signed in through Facebook
    And I log out
    When I click sign in with Facebook
    Then I should be signed back in through Facebook

  @focus
  Scenario Outline: Trainer Facebook name is same as another username
    Given a trainer exsists with the <facebook_name>
    When I sign in through facebook with the same <facebook_name>
    Then my username is changed to a <new_username>

    Examples:
      | facebook_name       | new_username        |
      | "facebook-name"     | "facebook-name"     |
      | "facebook-name-1"   | "facebook-name-2"   |
      | "facebook-name-2"   | "facebook-name-3"   |
      | "facebook-name-13"  | "facebook-name-14"  |
      | "facebook-name-345" | "facebook-name-346" |

  Scenario: Trainer can't visit login/signup page if signed in