@PPN2-218
Feature: User Management        
     
    #test obsolete user sees only 2 options Registriert & Genehmigung angefragt   
    @PPN2-611
    Scenario: N* PPN Coordiantor sets Account status directly to Active  
        Given "xtacoordinator" is on Ppnadmin home page
        #When user navigates to "Organisationen" tab
	    #And user searches for "XTA" in "Nach Organisationen suchen" 
	    #And user selects by table entry "XTA Dealer Sub"	     
        #And selects "Neuen Benutzer erstellen" from Aktionen        
        #And user populates field "Vorname" with "XTA"
        #And user populates field "Nachname" with "test" 
        #And user populates field "Benutzername" with "xtatest" 
        #And User selects date "16-June-1999" from "Geburtsdatum*"
        #And user populates field "Mobiltelefon" with "+49-123-456789"
        #And user populates field "E-Mail Adresse" with "ilinca.bulgarea@mhp.com"
        #And user selects from dropdown "Erste bevorzugte Sprache" "en_US"        
        #And user selects from dropdown "Account Status" "Aktiviert"
        #And user presses "Speichern"
        #Then user sees error message "Account Status: Fehlende Angabe"
        #Then user logs out of PPN lite 
 
 