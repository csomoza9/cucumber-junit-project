  Feature: Google search functionality
    User Story: As a user, whatever I search should appear in the webpage title

  @wip
  Scenario: Search functionality result title verification
    Given user is on Google search page
    When user types apple in the google search box and clicks enter
    Then verify user sees apple in google title