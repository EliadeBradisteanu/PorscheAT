@PPN2-372
Feature: Global Admin -Group Management

    # B - xtagroupmanager does not see XTA Application
    @PPN2-442
	Scenario: Group Coordinator: Add Group Coordinator and remove it 
		Given "xtagroupmanager" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Applicationrole"
		And user selects by table entry "XTA Applicationrole"
		And selects "Koordinatoren hinzufügen" from Aktionen
		Then user sees headerthree info "Koordinatoren hinzufügen"
	    Then user sees headerfive info "XTA Applicationrole"
		And user populates field "Benutzer durchsuchen" with "xtagroupcoordinator"
		Then button "Auswahl hinzufügen (0)" is disabled
		And user selects checkbox from search "xtagroupcoordinator"
		And user presses "Auswahl hinzufügen (1)"
		Then "Benutzer wurde erfolgreich als Koordinator zu" is "hinzugefügt"
		Then checkbox for "xtagroupcoordinator" is disabled
		And user presses "Abbrechen"
		And selects "Koordinatoren entfernen" from Aktionen
		Then user sees headerthree info "Koordinatoren entfernen"
	    Then user sees headerfive info "XTA Application"
	    And user populates field "Benutzer durchsuchen" with "xtagroupcoordinator"
	    Then button "Auswahl entfernen (0)" is disabled
	    And user selects checkbox from search "xtagroupcoordinator"
		And user presses "Auswahl entfernen (1)"
		And user presses "Bestätigen"
		Then "Benutzer wurde erfolgreich als Koordinator von" is "entfernt"	
		Then user logs out of PPN lite	
		
  