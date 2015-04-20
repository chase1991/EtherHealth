Feature: Add tags
	In this page you should be able to create new tags
	(if there is any), besides the exist tags 

	Scenario: create new tags
		Given I am on the listing tags page
		When I press New tag
		Then I should see creating page

	Scenario: creating a new tag 
		Given I am currently in the new tag page
		When I add a new tag
		Then should see Tag was successfully created.

	Scenario: edit a tag
		Given I am on the listing tags page
		When I press edit of any listed Ftype
		Then should see Editing Tag 