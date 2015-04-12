Feature: Welcome user
	This is the welcome page when 
	user enters out application. User
	should be able to create his/her account 
	or login with an existing account

	Scenario: Stays in home page
		Given I am on the welcome page
		When I press "Home"
		Then page should not change

	Scenario: Redirect to login page
		Given I am on the welcome page
		When I press "Login"
		Then should go to login page

	Scenario: Sign up
		Given I am on the welcome page
		When I press "Sign Up Now"
		Then should go to sign up page