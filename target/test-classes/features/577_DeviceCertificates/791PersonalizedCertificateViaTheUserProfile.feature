@PPN2-577
Feature: Device Certificates
	
	@PPN2-791
	Scenario: Personalized Certificate via the user profile		   
	    Given "xtauser" is on Ppnadmin home page   
        Then user clicks on user "User XTA User (PPN_COORDINATOR,PPN_STANDARD_USER)" and select option "Profil anzeigen"
	    Then user sees headerthree info "XTA User, User"
	    Then user sees headerfive info "XTA Dealer Sub"
	    Then user sees info "User XTA User xtauser Aktiviert lukas.reichert@porsche.de" 
	    And user navigates to "Zertifikat" second row tab
	    And user sees pagebody info "Allgemeiner Fehler:"
        Then user logs out of PPN lite
	    
	