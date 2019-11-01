@PPN2-373
Feature: Global Admin: Organisation Management 
    
    @PPN2-629
    Scenario: Global Admin: Add Managers to an Organisation   
         Given "xtaglobal" is on Ppnadmin home page
         When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	     And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	     And selects "PPN Manager verwalten" from Aktionen
	     Then user sees headerone info "Managers of XTA Dealers"
	     Then user sees headerfour info "Organizationgroup"	    
	     And selects "Mitglieder hinzufügen" from Aktionen
	     #B - Mitglieder Benutzer
	     Then user sees headerone info "Benutzer hinzufügen"
	     Then user sees headerfour info "Managers of XTA Dealers"	     
	     Then button "Auswahl hinzufügen (0)" is disabled
	     And user populates field "Mitglieder durchsuchen" with "xtamanager"
	     And user sees pagebody info "kein Mitglied"
	     And user selects checkbox from search "xtamanager"
	     And user presses "Auswahl hinzufügen (1)"
	     Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
	     Then checkbox for "xtamanager" is disabled
	     And user sees pagebody info "direktes Mitglied"
	     Then user logs out of PPN lite	
	     
	#B?- xtamanager can't see "Benutzer hinzufügen" from Aktionen    
	@PPN2-630
    Scenario: PPN Manager: Add coordinator to an organisation     
         #Given "xtamanager" is on Ppnadmin home page
         Given "xtaglobal" is on Ppnadmin home page
         When user navigates to "Organisationen" tab
         And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	     And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	     And selects "PPN Koordinatoren verwalten" from Aktionen
         # B - can't select anything if xtamanager
	     Then user sees headerone info "Coordinators of XTA Dealers"
	     Then user sees headerfour info "Organizationgroup"
         And selects "Mitglieder hinzufügen" from Aktionen
         #B - Mitglieder Benutzer
         Then user sees headerone info "Benutzer hinzufügen"
	     Then user sees headerfour info "Coordinators of XTA Dealers"	     
	     Then button "Auswahl hinzufügen (0)" is disabled
	     And user populates field "Mitglieder durchsuchen" with "xtacoordinator"
         And user sees pagebody info "kein Mitglied"
	     And user selects checkbox from search "xtacoordinator"
	     And user presses "Auswahl hinzufügen (1)"
	     Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
	     Then checkbox for "xtacoordinator" is disabled
	     And user sees pagebody info "direktes Mitglied"
	     Then user logs out of PPN lite   
	     
	@PPN2-790
    Scenario: Display Managers and Coordinators for an organisation (all users)
         Given "xtauser" is on Ppnadmin home page         
         When user navigates to "Organisationen" tab
         And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	     And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	     And user navigates to "Kontakte" second row tab	     
	     And user sees pagebody info "Manager User XTA Manager xtamanager XTA Subsidiary Koordinatoren User XTA Coordinator xtacoordinator XTA Dealers"
         Then user logs out of PPN lite            
         
    @PPN2-634
    Scenario: Global Admin: Remove Manager from Organisation
         Given "xtaglobal" is on Ppnadmin home page
         When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	     And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	     And selects "PPN Manager verwalten" from Aktionen	     	    
	     And selects "Mitglied entfernen" from Aktionen
         Then user sees headerone info "Mitglied entfernen"	     	     
	     Then button "Auswahl entfernen (0)" is disabled
         And user populates field "Mitglieder durchsuchen" with "xtamanager"
         And user selects checkbox from search "xtamanager"
	     And user presses "Auswahl entfernen (1)"
	     Then "Benutzer wurde erfolgreich entfernt von" is " "	   
	     Then user logs out of PPN lite   
	     
	@PPN2-635
    Scenario: PPN Manager: remove Coordinator from Organisation    
         #Given "xtamanager" is on Ppnadmin home page
         Given "xtaglobal" is on Ppnadmin home page
         When user navigates to "Organisationen" tab
         And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	     And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	     And selects "PPN Koordinatoren verwalten" from Aktionen         
         And selects "Mitglied entfernen" from Aktionen
         Then user sees headerone info "Mitglied entfernen"	     	     
	     Then button "Auswahl entfernen (0)" is disabled
         And user populates field "Mitglieder durchsuchen" with "xtacoordinator"
         And user selects checkbox from search "xtacoordinator"
	     And user presses "Auswahl entfernen (1)"
	     Then "Benutzer wurde erfolgreich entfernt von" is " "	   
	     Then user logs out of PPN lite         
	       	 