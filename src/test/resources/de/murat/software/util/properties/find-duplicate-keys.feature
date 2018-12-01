#Author: murat_yildiz@gmx.net

Feature: Find all duplicate keys
  As a user i want to know if keys are defined multiple times
  inside the same file. In case of duplicates i want to have a
  info output of all duplicate keys and the line number of occurence.

  Scenario: Property file has key defined multiple times
  	Given a file with extension equal to ".properties"
  	And with following entries:
  		|	key		|	delimiter	|	value		|
  		|	year	|	=					|	2014		|
  		|	model	|	=					|	touran	|
  		|	color	|	=					|	silver	|
  		|	year	|	=					|	2012		|
  		|	owner	|	=					|	murat		|
  		|	year	|	=					|	2013		|
  		|	color	|	=					|	white 	|
		When duplicates keys are searched
		Then following info about duplicate keys is created:
			|	key		|	lines			|
			|	year	|	1,4,6			|
			| color	| 3,7				|
			
