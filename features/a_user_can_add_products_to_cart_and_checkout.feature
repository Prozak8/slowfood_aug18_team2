Feature: Checkout Products
    As a user
    When I want to place an order
    I would like to be presented with a checkout page

Background: 
    Given the following products exists
        | name         | description    | price |
        | Pizza1       | Cheesy         |   5   |
        | Pizza2       | Spicy          |   30  |
    And the following users exist
        | name         | email                |       
        | Robin        | robin@example.com    |
    And I am logged in as "Robin"
    And I visit the product page
    
   
Scenario: A user can add products to cart 
    When I click "Add to cart" button on "Pizza1" product
    And I click "Add to cart" button on "Pizza2" product
    Then I should see "2 items"
       



