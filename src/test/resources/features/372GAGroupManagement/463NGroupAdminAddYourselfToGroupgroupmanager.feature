@PPN2-372
Feature: Global Admin -Group Management
	   
   @PPN2-463
    Scenario: N* Group Admin - add yourself to group -  group manager
        Given "xtagroupmanager" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Applicationrole"
		And user selects by table entry "XTA Applicationrole"	
		And selects "Benutzer hinzufügen" from Aktionen
		And user populates field "Benutzer durchsuchen" with "xtagroupmanager"
		Then button "Auswahl hinzufügen (0)" is disabled
		Then checkbox for "xtagroupmanager" is disabled
		Then user logs out of PPN lite	 
		
		
	
	 		  
