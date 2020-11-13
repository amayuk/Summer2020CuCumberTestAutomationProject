Feature: As user, I want to be able to create new car

      @add_car
      Scenario: 1. Add some car
        Given user is on the login page
        And user logs in as a "store manager"
        And user navigates to "Fleet" and "Vehicles"
        And user clicks on create car button
        When user adds new vehicle information
       #this is how we fill up the tables, left name parameter name and right is parameter value
        | License Plate | SDET |
        | Model Year | 2021 |