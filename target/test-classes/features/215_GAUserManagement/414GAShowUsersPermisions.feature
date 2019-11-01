@PPN2-215
Feature: Global Admin User Management 

  @PPN2-414
	Scenario: Global Admin - Show User's permisions
	    Given "xtacoordinator" is on Ppnadmin home page
		When user navigates to "Benutzer" tab
		And user searches for "xtauser" in "Nach Benutzern suchen"
		And user selects "xtauser" by cell menu option "Berechtigungen anzeigen"
	    Then user sees pagebody info "Für den Benutzer wurde noch keine Hauptrolle festelegt."
    	Then user sees pagebody info "Berechtigungen Anzeigename Technischer Name Typ Mitgliedsstatus Hauptrolle"
        And user presses circle button "Zurück"
		And user selects by table entry "xtauser"
		When user navigates to "Berechtigungen" second row tab
     	Then user sees headertwo info "XTA User, User"
     	Then user sees pagebody info "Für den Benutzer wurde noch keine Hauptrolle festelegt."
    	Then user sees pagebody info "Berechtigungen Anzeigename Technischer Name Typ Mitgliedsstatus Hauptrolle"
    	Then user logs out of PPN lite
      
				 