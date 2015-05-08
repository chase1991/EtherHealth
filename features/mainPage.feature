Feature: test of operations on the main page

	This is the page where user first see 
	when open this application 
	and can sign up or get a glance of this web application

	Scenario: go to signup page
		Given I am currently on root page
		When I want to sign up to this web
		Then I can see signup page

	Scenario: user signup
		Given I am currently on sign up page 
		When I fill in my personal information
		Then I can see that created successfully

