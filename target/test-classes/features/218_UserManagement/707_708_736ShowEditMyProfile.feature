@PPN2-218
Feature: User Management        
        
	@PPN2-707 # contains 708,736
    Scenario: PPN User: Show my profile + Edit my own profile
       Given "xtauser" is on Ppnadmin home page   
       Then user clicks on user "User XTA User (PPN_COORDINATOR,PPN_STANDARD_USER)" and select option "Profil anzeigen"
	   Then user sees headerthree info "XTA User, User"
	   Then user sees headerfive info "XTA Dealer Sub"
	   Then user sees info "User XTA User xtauser Aktiviert markus.bruns@mhp.com"
	   
	   #708
	    Then user clicks on user "User XTA User (PPN_COORDINATOR,PPN_STANDARD_USER)" and select option "Profil bearbeiten"
	    Then user sees headerthree info "Benutzer bearbeiten"
	    #B - all below fileds are disabeled
	    Then dropdown "Akademischer Titel" is disabled
		Then field "Vorname*" is disabled
	    Then field "Nachname*" is disabled
	    Then field "Benutzername*" is disabled
	    Then dropdown "Geschlecht" is disabled
	    Then field "E-Mail Adresse*" is disabled
	    Then field "Gültigkeitsdauer des Benutzerkontos" is disabled
	    Then dropdown "Account Status*" is disabled
        And user populates field "Mobiltelefon" with "+49-123-456789"
        And user populates field "Straße" with "Constantin Brancusi"
        And user presses "Submit"
        Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
        Then user clicks on user "User XTA User (PPN_COORDINATOR,PPN_STANDARD_USER)" and select option "Profil bearbeiten"
	    And user populates field "Mobiltelefon" with ""
        And user populates field "Straße" with ""
        And user presses "Submit"
        Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
	   
        Then user logs out of PPN lite
     
       
  