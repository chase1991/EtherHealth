Feature: ask a question (new version)

	This is the page where 
	users are able to ask a question
	after they login

	Scenario: asking a new question
		Given I am currently on ask new question page
		When I ask a question with one filter tag leaving blank
		Then I can see the question I asked

	Scenario: asking another new question
		Given I am currently on ask new question page
		When I ask another a question with other filter tag leaving blank
		Then I can see all  the previous the question I asked

