Feature: logout from user session

  As a user
  so that I can log out the website

  Scenario: Log in to website: add user
    Given I am going to the login webpage
    When I successfully logged in
    And I click logout button
    Then I should be able to logout and leave session