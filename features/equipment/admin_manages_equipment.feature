Feature: Admin manages equipment
  In order to have lots of equipment for our users
  As a fitafy admin
  I want to be able to manage equipment

  Background:
    Given I'm an admin

  Scenario: Admin creates equipment
    Given I'm on a new equipment page
    When I fill in the equipment form
    Then Snapz should give the created equipment message

  Scenario: Admin updates equipment
    Given equipment exists
    And I'm on an exsisting equipment's edit page
    When I change the equipment's name
    Then I should see the new name on the exercise's page
    And Snapz should given me the updated the equipment message

  @focus
  Scenario: Admin deletes equipment
    Given equipment exists
    And I'm on an exsisting equipment's edit page    
    When I click the delete equipment link
    Then the equipment should be gone
    And Snapz should give the deleted equipment message
