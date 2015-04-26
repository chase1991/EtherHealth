Feature: ask a question

	This is the page where 
	after user enters out application then
	 be able to ask a question

	Scenario: adding new question
		Given I am currently on ask question page
		When try to add a question
		Then I should see NoMethodError

	Scenario: login as a new user
		Given I am currently on ask question page
		When I press "Login"
		Then I should go to login page

