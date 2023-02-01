Feature: User should be able to login with valid credentials

  Background:
    Given user is on the login page of web table app

  Scenario: Login scenario with 1 param
    When user enters username "Test"
    And user enters password "Tester"
    And user clicks on login button
    Then user should see url contains orders