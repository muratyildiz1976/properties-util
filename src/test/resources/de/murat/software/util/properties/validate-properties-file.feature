#Author: murat_yildiz@gmx.net

Feature: Properties File Validation
  As a user i want to know if a properties file is valid

  Scenario: Checking valid file 
    Given a file with extension equal to ".properties"
    And at least one following minimum valid entry:
    	|	key				|	delimiter	|	value	|
  		|	language	|	=					|	 			|
    When the file is validated
    Then the file is valid

  Scenario: Checking invalid file extension
  	Given a file with extension not equal to ".properties"
  	When the file is validated
  	Then the file is invalid
  	
  Scenario: Checking empty file 
  	Given a file with extension equal to ".properties"
  	And the file is empty
  	When the file is validated
  	Then the file is invalid
  	
  Scenario: Checking file with multiple valid entries
  	Given a file with extension equal to ".properties"
  	And with following valid entries:
  		|	key					|	delimiter	|	value			|
  		|	norway			|	=					|	nor				|
  		|	switzerland	|	=					|	ch				|
  		|	germany			|	=					|	de  			|
  		|	turkey			|	=					|	tr				|
  		| usa					| = 				|						|
  		| canada			| = 				| ca				|
  		|	egypt				| = 				| eg				|
  		| asdf				| =					| 2j{ki{k?	|
		When the file is validated
		Then the file is valid
  		

