@all
Feature: Crud user Impacta

  Background:
    Given user would like to save a user
    And user informs login with value equal "NewUser"
    And user informs full_name with value equal "User X"
    And user informs email with value equal "user_x@gmail.com"
    And user informs age with value equal "25"

  @createUser
  Scenario: New user with Post
    When user clicks on save button
    Then user should see "save with success" message

  @readUser
  Scenario: User show a register with get
    When user clicks on save button
    And user wants to see user information
    Then user should see "success" message
    And user should see login with value "NewUser"
    And user should see full_name with value "User X"

  @updateUser
  Scenario: User update a register with put
    When user clicks on save button
    And user informs login with value equal "teste"
    And user informs full_name with value equal "Teste Luiz"
    And user informs email with value equal "teste@gmail.com"
    And user informs age with value equal "26"
    And user clicks on save button again
    And user wants to see user information
    Then user should see "success" message
    And user should see full_name with value "Teste Luiz"

  @deleteUser
  Scenario: User delete a register with delete
    When user clicks on save button
    And user clicks on delete button
    Then user should see "no content" message
