@PPN2-218
Feature: User Management

    @PPN2-482 # contains 734
    Scenario: User creation process Part I Coordinator
        Given "xtacoordinator" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
        And user populates field "Nach Organisationen suchen" with "XTA Subsidiary"
        And user selects by table entry "XTA Subsidiary"
        And selects "Neuen Benutzer erstellen" from Aktionen
        Then user sees headerthree info "Neuen Benutzer erstellen"
        And user presses "Speichern und Berechtigungen hinzufügen"
	    Then user sees error message "There are 7 fields that require your attention"
        And user populates field "Vorname" with "XTA"
        And user populates field "Nachname" with "Groupmanager-'"
        And user populates field "Benutzername" with "xtaagroupmanager"
        And User selects date "16-June-1999" from "Geburtsdatum*"
        And user populates field "Mobiltelefon*" with "+49-123-456789"
        And user populates field "E-Mail Adresse" with "ilinca.bulgarea@mhp.com"
        And user populates field "Stadt" with "Cluj"
        And user selects from dropdown "Land" "Romania"
        And user populates field "Abteilung" with "Testing"
        And user populates field "Mitarbeiternummer" with "x124248"
        And user selects from dropdown "Erste bevorzugte Sprache" "en_US"
        And user selects from dropdown "Erste bevorzugte Sprache" "de_DE"
        And User selects date "16-June-2022" from "Gültigkeitsdauer des Benutzerkontos"
        And user presses "Speichern und Berechtigungen hinzufügen"
        Then "Der Benutzer" is "wurde erfolgreich erstellt"
        Then user sees headerthree info "Benutzer zu Gruppen hinzufügen"
        When user navigates to "Benutzer" tab
	    And user searches for "xtaagroupmanager" in "Nach Benutzern suchen" 
	    Then user sees pagebody info "Registriert"        
        Then user logs out of PPN lite
        #Then email will be sent to PPN Manager  
 
   @PPN2-483 
   Scenario: User creation process part II : Manager
        Given "xtamanager" is on Ppnadmin home page       
        When user navigates to "Benutzer" tab
        And user populates field "Nach Benutzern suche" with "xtaagroupmanager"
        And user selects "xtaagroupmanager" by cell menu option "Benutzer bearbeiten"
	    Then user sees headerthree info "Benutzer bearbeiten"
        And user selects from dropdown "Account Status" "Aktiviert"
        And user presses "Submit"
        Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
        Then user sees info "Aktiviert"
        Then user logs out of PPN lite
   
   #has to be rewritten
   @PPN2-503
   Scenario: Assign primary job role ( PPN Manger and PPN Coordinator)
       Given "xtamanager" is on Ppnadmin home page 
       When user navigates to "Benutzer" tab
       And user populates field "Nach Benutzern suche" with "xtaagroupmanager"
       And user selects "xtaagroupmanager" by cell menu option "Benutzer bearbeiten"
	   Then user sees headerthree info "Benutzer bearbeiten"
       #And user selects "XTA Berechtigungsgruppe" from "Hauptrolle" 
       #And User presses Save
       #Then Hauptrolle "XTA Berechtigungsgruppe wurde erfolgreich als Hauptrolle gesetzt"

    @PPN2-586
    Scenario: PPN Manager: Account validity
       Given "xtamanager" is on Ppnadmin home page
       When user navigates to "Benutzer" tab
	   And user populates field "Nach Benutzern suche" with "xtaagroupmanager"
       And user selects by table entry "xtaagroupmanager"      
       And selects "Benutzer bearbeiten" from Aktionen      
       And user populates field "E-Mail Adresse" with "xtaa.user@mhp.com"
       And user clicks field "Neue Gültigkeitsdauer"
       And User selects date "22-July-2024" from "Neue Gültigkeitsdauer"       
       And user presses "Submit"
	   Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
	   Then user sees info "22. Juli 2024 Aktiviert"
       Then user logs out of PPN lite
	  
    @PPN2-587
    Scenario: N* Account validity: PPN Coordinator
       Given "xtacoordinator" is on Ppnadmin home page
       #Given "Accountgueltigkeit des Benutzers" "xtauser" is set to "22.07.2020"
       When user navigates to "Benutzer" tab
	   And user populates field "Nach Benutzern suche" with "xtaagroupmanager"
       And user selects by table entry "xtaagroupmanager"
       And selects "Benutzer bearbeiten" from Aktionen
       And user clicks field "Neue Gültigkeitsdauer"
       And User selects date "24-July-2024" from "Neue Gültigkeitsdauer"       
       And user presses "Submit"
       Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
       #Then user sees info "Requested" and "Accountgueltigkeit des Benutzers" set to "22.07.2020"
       #Should see requested
       Then user sees info "22. Juli 2024"
       Then user logs out of PPN lite
       
    @PPN2-610
	Scenario: PPN Coordinator: Change Account Status
		Given "xtacoordinator" is on Ppnadmin home page
		When user navigates to "Benutzer" tab
		And user searches for "xtaagroupmanager" in "Nach Benutzern suchen"
		And user selects by table entry "xtaagroupmanager"
		And selects "Benutzer bearbeiten" from Aktionen		
		And user selects from dropdown "Account Status" "Verlängerung angefragt"
		And user presses "Submit"
		Then "Der Benutzer" is "wurde erfolgreich bearbeitet"		
		Then user sees info "Verlängerung angefragt"
		And selects "Benutzer bearbeiten" from Aktionen
        Then user sees pagebody info "Benutzer bearbeiten"
        And user selects from dropdown "Account Status*" "Deaktiviert"
		And user presses "Submit"
		Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
		Then user sees info "Deaktiviert"
		Then user logs out of PPN lite
	  
    @PPN2-001
    Scenario: Not an actual test, delete created above user
	    Given "xtaglobal" is on Ppnadmin home page
		When user navigates to "Benutzer" tab
		And user searches for "xtaagroupmanager" in "Nach Benutzern suchen"
		And user selects by table entry "xtaagroupmanager"
        And selects "Benutzer löschen" from Aktionen  
		And user presses "Löschen"
        Then "Der Benutzer" is "wurde erfolgreich gelöscht"
        Then user logs out of PPN lite
   