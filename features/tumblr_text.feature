Feature: Post on Tumblr

	Background:
		Given I am signed into tumblr and on the dashboard
		
	Scenario: Create Text Post on Tumblr
  
		Given I have chosen the Text Post option
		When the text post window pops up
		And I entered the manditory fields for the text post
		Then I should see the text post on my dashboard after sumitting it