
Feature: A patient searches procedures
	
	As a Patient
	I want to for the cost of medical procedures

	Scenario: A patient searches for a procedure
		Given 	I am on the homepage
		When I type in a "procedure"
		Then I should see the ":Price, :hospital, :procedure" 

	Scenario: A user sorts the search
		Given I have recieved my results
		When I choose to "sort by price"
		Then I should be able to sort them by "price"
		When I choose to "sort them by nothing"

