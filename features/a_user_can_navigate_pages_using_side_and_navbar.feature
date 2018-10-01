Feature: Navigate the website
  As a user
  In order to navigate the website
  I would like to be able to click on different buttons

Background: 
    Given I visit the landing page

Scenario: User can navigate different pages by using buttons
    When I click "Products" button
    Then I should be on product page
    When I click "Login" button
    Then I should be on login page
    When I visit the landing page
    And I click "Signup" button
    Then I should be on signup page
    When I visit the landing page
    And I click "Cart" button
    Then I should be on cart page