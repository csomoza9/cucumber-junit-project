Feature: Web table user order feature


  Scenario: User should be able to place order and order seen in web table
    Given user is already logged in and on order page
    When user selects product type "Familybea"
    And user enters quantity 2
    And user enters customer name "Sherlock Holmes"
    And user enters street "221B Baker Street"
    And user enters city "London"
    And user enters state "England"
    And user enters zipcode "50505"
    And user selects credit card type "american express"
    And user enters credit card number "1111222233334444"
    And user enters expiry date "12/23"
    And user enters process order button
    Then user should see "Sherlock Holmes" in first row of the web table


  Scenario Template: User should be able to place order and order seen in web table using DDT
    Given user is already logged in and on order page
    When user selects product type "<productType>"
    And user enters quantity <quantity>
    And user enters customer name "<customerName>"
    And user enters street "<street>"
    And user enters city "<city>"
    And user enters state "<state>"
    And user enters zipcode "<zipCode>"
    And user selects credit card type "<cardType>"
    And user enters credit card number "<cardNumber>"
    And user enters expiry date "<expiryDate>"
    And user enters process order button
    Then user should see "<expectedName>" in first row of the web table


    Examples: Famous female scientists
      | productType | quantity | customerName      | street            | city   | state   | zipCode | cardType         | cardNumber       | expiryDate | expectedName      |
      | Familybea   | 2        | Rosalind Franklin | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Rosalind Franklin |
      | Screenable  | 2        | Marie Curie       | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Marie Curie       |
      | Familybea   | 2        | Rachel Carson     | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Rachel Carson     |
      | MoneyCog    | 2        | Katerina Johnson  | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Katerina Johnson  |


    Examples: Famous male scientists
      | productType | quantity | customerName    | street            | city   | state   | zipCode | cardType         | cardNumber       | expiryDate | expectedName    |
      | Familybea   | 2        | Niels Bohr      | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Niels Bohr      |
      | Screenable  | 2        | Albert Einstein | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Albert Einstein |
      | Familybea   | 2        | Charles Darwin  | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Charles Darwin  |
      | MoneyCog    | 2        | Stephen Hawking | 221B Baker Street | London | England | 50505   | american express | 1111222233334444 | 12/23      | Stephen Hawking |