@PPN2-372
Feature: Global Admin -Group Management
		
	@PPN2-390
    Scenario: Global Admin: Add Group
      Given "xtaglobal" is on Ppnadmin home page
      When user navigates to "Gruppen" tab
      And user populates field "Gruppen durchsuchen" with "XTA Application"
      And user selects by table entry "XTA Application"      
      And selects "Gruppen hinzufügen" from Aktionen
      Then user sees headerthree info "Gruppen hinzufügen"
	  Then user sees headerfive info "XTA Application"
      And user populates field "Gruppen durchsuchen" with "XTA Applicationrole"
      Then button "Auswahl hinzufügen (0)" is disabled
      And user selects checkbox from search "xta_applicationrole"
      And user presses "Auswahl hinzufügen (1)"
      Then "Gruppe" is "wurde erfolgreich hinzugefügt zu"
      Then checkbox for "xta_applicationrole" is disabled
	  Then user logs out of PPN lite
	  
	@PPN2-391
	Scenario: Global Admin: Remove Group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Application"
		And user selects by table entry "XTA Application"
		And selects "Gruppen entfernen" from Aktionen
		Then user sees headerthree info "Gruppen entfernen"
	    #B header five is not shown
	    #Then user sees headerfive info "XTA Application" 
		And user populates field "Gruppen durchsuchen" with "XTA Applicationrole"
		Then button "Auswahl entfernen (0)" is disabled
 		And user selects checkbox from search "xta_applicationrole"
		And user presses "Auswahl entfernen (1)"
		And user presses "Bestätigen"
		Then "Gruppe" is "wurde erfolgreich entfernt aus Applikation"
		Then user logs out of PPN lite  
		
  