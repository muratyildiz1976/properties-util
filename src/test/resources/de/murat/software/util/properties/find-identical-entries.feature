#Author: murat_yildiz@gmx.net

Feature: Find identical entries
  As a user i want to know, if a properties file contains
  identical entries of key-value pairs. In case of identicals
  i want to know the lines.

  Scenario: Properties file contains identical entries
  	Given a file with extension equal to ".properties"
    And following entries in a properties file:
  		|	key					|	delimiter	|	value		|
  		|	km					|	=					|	2014		|
  		|	ps					|	=					|	2014	 	|
  		|	year				|	=					|	2014		|
  		|	fabricator	|	=					|	VW			|
  		|	color				|	=					|	silver	|
  		|	brand				|	=					|	VW			|
  		|	owner				|	=					|	murat		|
  		|	km					|	=					|	2014		|
  		|	ps					|	=					|	2014	 	|
		When identicals are searched
		Then following info about identical entries is created:
  		|	key					|	delimiter	|	value		|	lines	|
  		|	km					|	=					|	2014		|	1,8		|
  		|	ps					|	=					|	2014	 	|	2,9		|


