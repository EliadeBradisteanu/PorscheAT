@PPN2-373
Feature: Global Admin: Organisation Management 
    
   @PPN2-637
    Scenario: PPN Manager: Add Groups to Coordinator Organisationgroups (N*?)     
         #Given "xtamanager" is on Ppnadmin home page
         Given "xtaglobal" is on Ppnadmin home page
         When user navigates to "Organisationen" tab
         And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	     And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	     And selects "PPN Koordinatoren verwalten" from Aktionen
         # B - can't select anything if xtamanager
         And selects "Gruppen hinzufügen" from Aktionen
         Then button "Auswahl hinzufügen (0)" is disabled
         And user populates field "Gruppen durchsuchen" with "xta"
         And user sees pagebody info "kein Mitglied"
         And user selects checkbox from search "xta_application"
         And user selects checkbox from search "xta_applicationrole"
         And user selects checkbox from search "xta_permissiongroup"
         And user presses "Auswahl hinzufügen (3)"
	     Then "3 Gruppen wurden erfolgreich hinzugefügt zu" is " "
         Then checkbox for "xta_application" is disabled
	     Then checkbox for "xta_applicationrole" is disabled
	     Then checkbox for "xta_permissiongroup" is disabled
	     And user sees pagebody info "direktes Mitglied"
	     Then user logs out of PPN lite
    
     @PPN2-639
     Scenario: PPN Manager: Remove Groups from Coordinator Organisationsgruppe (*N?)      
         #Given "xtamanager" is on Ppnadmin home page
         Given "xtaglobal" is on Ppnadmin home page
         When user navigates to "Organisationen" tab
         And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	     And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	     And selects "PPN Koordinatoren verwalten" from Aktionen
         # B - can't select anything if xtamanager
         And selects "Gruppen entfernen" from Aktionen
         Then user sees headerone info "Gruppen entfernen"
         #B- header4 is not displayed
         #Then user sees headerfour info "Managers of XTA Dealers
         Then button "Auswahl entfernen (0)" is disabled
         And user populates field "Gruppen durchsuchen" with "xta"
         And user selects checkbox from search "xta_application"
         And user selects checkbox from search "xta_applicationrole"
         And user selects checkbox from search "xta_permissiongroup"
	     And user presses "Auswahl entfernen (3)"
	     Then user sees pagebody info "Ausgewählte Gruppen entfernen"
         And user presses "Bestätigen"	     
	     #3 Gruppen wurden erfolgreich entfernt aus -: -.	     
	     Then "3 Gruppen wurden erfolgreich entfernt aus" is " "	   
	     Then user logs out of PPN lite 
      	
        
        
	 