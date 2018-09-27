Feature: Login
   As a user
   In order to be able to place an order
   I would like to be able to log in

   Background:
       Given I visit the landing page
       And I click "Login"
       And the following user exists
           | email             | password    |
           | miriam@work.com   | miriampass  |