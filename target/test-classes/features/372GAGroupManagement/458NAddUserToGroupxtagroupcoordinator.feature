@PPN2-372
Feature: Global Admin -Group Management
		
   @PPN2-458
	Scenario: N* Add User to group: xtagroupcoordinator
	    #B- Cannot use aktionen
	    #Given "xtagroupcoordinator" is on Ppnadmin home page
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Permissiongroup"
		And user selects by table entry "XTA Permissiongroup"
		Then user sees headerthree info "XTA Permissiongroup"
	    Then user sees headerfive info "Berechtigungsgruppe"		
		And selects "Benutzer hinzufügen" from Aktionen
		And user populates field "Benutzer durchsuchen" with "xtauser"
		Then button "Auswahl hinzufügen (0)" is disabled
		Then checkbox for "xtauser" is disabled
		Then user logs out of PPN lite		
   
  