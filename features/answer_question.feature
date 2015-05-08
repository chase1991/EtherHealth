Feature:  user can answer a question
	This is the answer page where user can see the 
	incomming questions asked by others

	Scenario: go to answer page 
		Given I am on the basic web page
		When I press login button to login
		And I press questions button
		And I press incoming button
		Then I should see incoming questions

	Scenario: answer a question
		Given I am on answer page 
		When I answer a question
		Then I should see the answers I posted
