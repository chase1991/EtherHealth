Feature: ask a question

	This is the page where 
	after user enters out application then
	 be able to ask a question

	Scenario: adding new question
		Given I am on ask question page
		When try to add a question
		Then I should see NoMethodError

	Scenario: login as a new user
		Given I am on list of question page
		When I press Login
		Then should go to login page

