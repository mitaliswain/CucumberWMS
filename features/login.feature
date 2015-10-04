Feature: Login Feature
  As a warehouse associate
  I want to log in to the WMSUI
  so that I can track the shipments

  Scenario Outline: Login with correct user id and password
    Given I am in login page
    When I enter the user id as "<userid>"
    And I enter password as "<password>"
    And I click on "<button>" button
    Then I should be in main page
    Scenarios:
    |userid   | password|button |
    |Admin    |Admin    |Sign In|

  Scenario Outline: Login with correct user id and wrong password
    Given I am in login page
    When I enter the user id as "<userid>"
    And I enter password as "<password>"
    And I click on "<button>" button
    Then it should throw the error message "<error_message>"
  Scenarios:
    |userid   | password|button |error_message |
    |Admin    |password |Sign In|Invalid User Id or Password|

  Scenario Outline: Login with Incorrect user id and  password
    Given I am in login page
    When I enter the user id as "<userid>"
    And I enter password as "<password>"
    And I click on "<button>" button
    Then it should throw the error messages "<error_message>"
  Scenarios:
    |userid      | password |button |error_message |
    |username    |password  |Sign In|Invalid User Id or Password|
