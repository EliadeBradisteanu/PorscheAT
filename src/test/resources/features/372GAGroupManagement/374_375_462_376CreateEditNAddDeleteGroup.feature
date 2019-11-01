@PPN2-372
Feature: Global Admin -Group Management
	
	@PPN2-374 #@issue:PPN2-374
	Scenario: Global Admin - Create Group	   
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab	
		And selects "Neue Gruppe erstellen" from Aktionen
		Then user sees pagebody info "Gruppe erstellen"
		And user selects from dropdown "Typ" "Applikation"
		And user presses "Weiter"
		Then user sees headerthree info "Neue Gruppe erstellen" 
		And user presses "Speichern"
	    Then user sees error message "Es gibt 7 Felder welche Ihre Aufmerksamkeit benötigen"
	 	Then dropdown "Typ" is disabled
		And user populates field "Anzeigename*" with "XTAA Applikation"		
		And user populates field "Beschreibung" with "XTAA Applikation"
		And user selects from dropdown "Business Types" "Porsche AG, Porsche Importeur, Vertragspartner"
		And user selects from dropdown "Backend" "Backend 1"
		And user populates field "Support Kontakt" with "xtagroupcoordinator"
		And user populates field "Support E-Mail Adresse" with "pacc@pacc.com"
		And user populates field "Application Manager" with "xtagroupmanager"
		And user populates field "Business Process Owner" with "xtagroupmanager"
		And user populates field "Labeled Uri" with "test"
		And user ticks checkbox "App Sichtbarkeit"
		And user selects from dropdown "Applikations Typ" "Application"
		And user populates field "Realm Position" with "1"
		And user populates field "Gruppen Manager Benutzername*" with "xtagroupmanager"
		And user presses "Speichern"
		Then "Die Gruppe" is "wurde erfolgreich erstellt"
		Then user sees info "XTAA Applikation Porsche AG Porsche Importeur Vertragspartner Backend 1 xtagroupcoordinator pacc@pacc.com xtagroupmanager test Application 1"
		Then user logs out of PPN lite
    
	@PPN2-375
	Scenario: Global Admin - Edit Group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTAA Applikation"
		And user selects by table entry "XTAA Applikation"
		Then user sees headerthree info "XTAA Applikation"
		Then user sees headerfive info "Applikation"
		Then user sees pagebody info "Basisinformation"
		Then user sees info "XTAA Applikation Porsche AG Porsche Importeur Vertragspartner Backend 1 xtagroupcoordinator pacc@pacc.com xtagroupmanager test Application 1"
		And user presses circle button "Back"
		And user selects "XTAA Applikation" by cell menu option "Gruppendetails anzeigen"
		Then user sees headerthree info "XTAA Applikation"
		Then user sees headerfive info "Applikation"
		Then user sees pagebody info "Basisinformation"
		Then user sees info "XTAA Applikation Porsche AG Porsche Importeur Vertragspartner Backend 1 xtagroupcoordinator pacc@pacc.com xtagroupmanager test Application 1"
		And selects "Gruppe bearbeiten" from Aktionen
		Then user sees headerthree info "Gruppe bearbeiten" 
		Then dropdown "Typ" is disabled
		Then field "Technischer Name*" is disabled
		And user populates field "Anzeigename" with "XTAA@-/Applikation"
		And user populates field "Beschreibung" with "this group is for tests"
		And user presses "Speichern"
		Then "Die Gruppe" is "wurde erfolgreich bearbeitet"
		Then user sees info "XTAA@-/Applikation xtaa_applikation this group is for tests Vertragspartner, Porsche Importeur, Porsche AG xtagroupcoordinator pacc@pacc.com Backend 1 xtagroupmanager test Application 1"
		Then user logs out of PPN lite
	    

    @PPN2-462
    Scenario: N * Add User indirectly to a group
        Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
        And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
        And user selects by table entry "XTAA@-/Applikation"        
        When user navigates to "Mitglieder" second row tab
        Then user doesn't see info "xtauser"
		Then user logs out of PPN lite


    @PPN2-376
	Scenario: Group Admin: Delete Group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
	    And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
	    And user selects by table entry "XTAA@-/Applikation"
		And selects "Gruppe löschen" from Aktionen
		Then user sees pagebody info "Gruppe löschen"
		And user presses "Abbrechen"
		And user presses circle button "Back"
		And user selects "XTAA@-/Applikation" by cell menu option "Gruppe löschen"
		Then user sees pagebody info "Gruppe löschen"
		And user presses "Bestätigen"
		Then "Die Gruppe" is "wurde erfolgreich gelöscht"
		Then user logs out of PPN lite
		
