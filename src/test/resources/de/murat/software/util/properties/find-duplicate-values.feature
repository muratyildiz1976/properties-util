#Author: murat_yildiz@gmx.net

Feature: Find all duplicate values
  As a user i want to know if values are defined multiple times
  inside the same file. In case of duplicates i want to have a
  info output of all duplicate values and the line number of occurence.

  Scenario: Property file has value defined multiple times
  	Given a file with extension equal to ".properties"
  	And with following entries:
  		|	key					|	delimiter	|	value		|
  		|	year				|	=					|	2014		|
  		|	fabricator	|	=					|	VW			|
  		|	color				|	=					|	silver	|
  		|	brand				|	=					|	VW			|
  		|	owner				|	=					|	murat		|
  		|	km					|	=					|	2014		|
  		|	ps					|	=					|	2014	 	|
		When duplicate values are searched
		Then following info about duplicates values is created:
			|	value		|	lines			|
			|	2014		|	1,6,7			|
			| VW			| 2,4				|
