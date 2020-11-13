Feature: As user I want to be able to login under different roles
  # this is a comment

  #if it's common beginning steps we use Background (Tests pre-condition will executed before every scenario)
  #All of the above scenarios must login so we can use it but if it was 2 of them we couldnt use Background
  Background: common steps
    Given user is on the login page


  Scenario: Login as a sales manager
    When user logs in
    Then user should see dashboard page

  @parametrized_test @smoke_test
  Scenario: Parametrized login
    When user logs in as a "driver"
    Then user should see dashboard page
#"driver" - is a paramater. "" allows to do test parametrization which helps to re-use test steps

  @negative_login
  Scenario: Invalid password
    When user logs in with "storemanager85" username and "wrong" password
    Then user verifies that "Invalid username or password." message is displayed