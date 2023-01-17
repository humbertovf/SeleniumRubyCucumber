Feature: Login

  Background:
    Given a user lands on login page

  @smoke-testing
  Scenario Outline: Login feature with regular and non-regular flow
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

  @positive-testing
  Scenario Outline: Validating existing user
    When a user clicks on forgot password link
    And request reset password code page is displayed
    And user enters user name <data_set> and click on reset password button
    Then Reset Password link sent successfully message should be displayed
    Examples:
      | data_set            |
      | ForgotPsw_data_set1 |
      | ForgotPsw_data_set2 |
      | ForgotPsw_data_set4 |
      | ForgotPsw_data_set5 |
      | ForgotPsw_data_set6 |

  @negative-testing
  Scenario Outline: Validating empty fields
    When a user clicks on forgot password link
    And request reset password code page is displayed
    And user enters user name <data_set> and click on reset password button
    Then Required message should be displayed
    Examples:
      | data_set            |
      | ForgotPsw_data_set3 |

