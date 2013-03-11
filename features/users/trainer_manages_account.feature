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
    And I should be on my user page
    And I should get a welcome up email

  # Scenario: Trainer needs to confirm email
  #   Given I'm not logged in
  #   When I've created an account
  #   When I try to log in
  #   Then I get a message to confirm my email
  #   And I can resend the email

  Scenario: Trainer confirms email
    Given I've created an account
    When I confirm my email
    Then I'm signed in automagically

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

  Scenario: Trainer can't visit login/signup page if signed in

  Scenario: Trainer uploads profile pic
    Given I'm on my profile page
    When I upload a profile pic
    Then that should be set as my profile pic

  Scenario: Trainer gets error messages if signing up
    Given I'm not logged in
    When I click sign up
    And I try creating an account incorrectly
    Then I should see the error messages

  Scenario: Trainer logs in with forgot password link
    Given I'm not logged in
    When I complete a forgot password flow
    And I follow the link emailed to me
    And I enter in a new password
    Then I should be on my edit account page