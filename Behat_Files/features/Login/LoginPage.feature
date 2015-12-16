Feature: Login page
  In order to test the Login page
  As a variety of users
  I need to verify the page structure and functionality


#########################################################################################
###  VALIDATIONS
#########################################################################################

  @login @api @regression
  Scenario: Verify the structure of the login page
    Given I visit the Login page
    Then I verify the structure of the Login page


#########################################################################################
###  SUCCESSFUL LOGIN
#########################################################################################

  @login @api @regression @smoke
  Scenario: Verify a successful login
    Given I am logged in as a user with the administrator role
    And I move backward one page
    Then I should be logged in successfully
    And I verify the my account page fields and buttons are displayed on the page


#########################################################################################
###  UNSUCCESSFUL LOGIN
#########################################################################################

  @login @api @regression
  Scenario: Verify a failed login
    Given I visit the Login page
    When I enter the username invalid and password invalid
    And I press login
    Then I should see the login failure message


