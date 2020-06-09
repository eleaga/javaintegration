Feature: Crud user Impacta

  Scenario: New user with Post
    Given user would like to create new user
    And user login is "NewUser"
    And user full_name is "User X"
    And user Email is "user_x@gmail.com"
    And user Age is "25"
    When user clicks on "save" button
    Then user see the message "Saved successfully"

    Scenario Outline: Search new user with Get
      Given user list on Server
      When user search the latest user saved
      Then the latest user see value "User X" in login

      Examples:
      | login  |  User X

      Scenario: Update
        Given the new user login "NewUser"
        When the user change the login to "OldUser"
        And clicks on Update button
        Then user see the message "Saved Successfully"

        Scenario Outline: Delete
          Given the new user create
          When the user clicks on delete button
          Then the new user is deleted

          Examples:
          | login          | NewUser
          | full_name      | User X
          | Email          | user_x@gmail.com
          | Age            | 25





