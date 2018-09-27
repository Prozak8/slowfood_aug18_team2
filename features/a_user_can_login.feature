Feature: User login
    As a user
    In order to be able to place an order
    I would like to be able to log in       

    Background:  
        Given I am on the "landing" page
        When I click the "Login" button 
        Given the following user exists
            | email             | password    |   
            | miriam@work.com   | miriampass  |   

    Scenario: A user can log in
        Then I should be on the login page
        And I should be able to fill in "Email" with my "miriam@work.com" 
        And I fill in "Password" with "miriampass"
        And I click "Login" 
        Then I should see message "Signed in successful!"

   