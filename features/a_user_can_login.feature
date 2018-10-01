Feature: Login
   As a user
   In order to be able to place an order
   I would like to be able to log in

   Background:
       Given I visit the landing page
       And I click "Login" button
       And the following user exists
           | email             | password    |
           | miriam@work.com   | miriampass  |
           
    Scenario: A user can log in
       Then I should be on login page
       And I fill in "Email" with "miriam@work.com"
       And I fill in "Password" with "miriampass"
       And I click "Log in" button
       Then I should see message "Signed in successfully."