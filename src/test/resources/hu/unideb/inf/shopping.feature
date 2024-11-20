Feature: Saucedemo Shopping

  Background:
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked

    Scenario: Buying two items
      Given the '<item 1>' is added to the cart
      And the '<item 2>' is added to the cart
      And the 'Cart' button is clicked
      And the 'Checkout' button is clicked
      And the 'First Name' field is filled with '<firstname>'
      And the 'Last Name' field is filled with '<lastname>'
      And the 'Zip Code' field is filled with '<zipcode>'
      When the 'Continue' button is clicked
      Then the price should read '<total>'
      Then the 'Finish' button is clicked

      Examples:
        | item 1                  | item 2                            | firstname | lastname | zipcode | total          |
        | Sauce Labs Backpack     | Sauce Labs Bike Light             | first     | last     | 1234    | Total: $43.18  |
        | Sauce Labs Onesie       | Sauce Labs Fleece Jacket          | mr        | boy      | 2345    | Total: $62.62  |
        | Sauce Labs Bolt T-Shirt | Test.allTheThings() T-Shirt (Red) | mrs       | girl     | 2345    | Total: $34.54  |



