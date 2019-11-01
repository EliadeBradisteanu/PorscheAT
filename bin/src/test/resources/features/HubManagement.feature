@PPN2-429
Feature: Hub Management Add, Edit, Delete Hub 
   
	@PPN2-430
	Scenario: Global Admin, Add Hub	   
	    Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user searches for "Dr. Ing. h.c. F. Porsche AG" in "Nach Organisationen suchen" 
	    And user selects "Dr. Ing. h.c. F. Porsche AG" by cell menu option "Neuen Hub erstellen"
	    Then user sees headertwo info "Neuen Hub erstellen"
	    And user presses "Submit"
	    Then user sees error message "Anzeigename: Missing input. Unbekanntes Feld: Missing input."
	    And user populates field "Anzeigename*" with "XTA Test Organisation"
	    And user selects from dropdown "Business Type*" "Porsche AG"
        And user presses "Submit" 
        Then "Der Hub" is "wurde erfolgreich erstellt"
        Then user sees info "XTA Test Organisation Porsche AG"
	    Then user logs out of PPN lite
        
     @PPN2-438
	 Scenario: Global Admin, Edit Hub   
        Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Test Organisation" in "Nach Organisationen suchen" 
	    And user selects "XTA Test Organisation" by cell menu option "Hub bearbeiten"
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses circle button "Back"
	    And user selects by table entry "XTA Test Organisation"
	    Then user sees headertwo info "XTA Test Organisation"
	    Then user sees headerfour info "H Im Organisationsbaum anzeigen"	    
	    Then user sees info "XTA Test Organisation Porsche AG"
        And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user populates field "Beschreibung" with "XTA Test Organisation - to be deleted"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"
        Then user sees info "XTA Test Organisation Porsche AG XTA Test Organisation - to be deleted"
	    Then user logs out of PPN lite
   
     @PPN2-439
	 Scenario: Global Admin, Delete Hub 
        Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Test Organisation" in "Nach Organisationen suchen"
        And user selects by table entry "XTA Test Organisation"
        And selects "Hub löschen" from Aktionen
        Then user sees pagebody info "Hub löschen bestätigen"
        And user presses "Löschen"
        Then "The Hub" is "was successfully deleted"
        Then user logs out of PPN lite
        



        
        
        
        