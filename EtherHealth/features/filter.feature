Feature: Add filter
	In this page you should be able to create new filters
	(if there is any), besides the exist filters 

	Scenario: create new filters
		Given I am on the listing filters page
		When I press New Filter
		Then I should see creating filter page

	Scenario: creating a new filter 
		Given I am currently in the new filter page
		When I fill out Ftype and Subtype then press Create Filter
		Then should see Filter was successfully created

	Scenario: delete a filter
		Given I am on the listing filters page
		When I press Destory of any listed Ftype
		Then should see Are you sure in the pop out window