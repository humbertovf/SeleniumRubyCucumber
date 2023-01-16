Feature: Login

  Scenario Outline: Positive Testing
    Given a user lands on login page
    When a user enters data <data_set> needed in the Login form
    Then Validation message <validation_message> should be displayed
    Examples:
      | data_set        | validation_message  |
      | Login_data_set1 | Dashboard           |
      | Login_data_set2 | Dashboard           |
      | Login_data_set3 | Invalid credentials |
      | Login_data_set4 | Required            |
      | Login_data_set5 | Required            |
      | Login_data_set6 | Required            |