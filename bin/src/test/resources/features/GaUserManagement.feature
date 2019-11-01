@PPN2-215
Feature: Global Admin User Management 
    
#@PPN2-216
#Scenario: Global Admin - Add User
#      Given "xtaglobal" is on Ppnadmin home page
#      When user navigates to "Organisationen" tab
#      And user searches for "XTA" in "Nach Organisationen suchen"
#      And user selects "XTA Dealer Sub" by cell menu option "Neuen Benutzer erstellen"
#      Then user sees headertwo info "Neuen Benutzer erstellen"
#      And user presses circle button "Zurück"
#      And user selects by table entry "XTA Dealer Sub"
#      And selects "Neuen Benutzer erstellen" from Aktionen
#      Then user sees headertwo info "Neuen Benutzer erstellen"
#      And user presses "Speichern"
#      Then user sees error message "Vorname: Fehlende Angabe Nachname: Fehlende Angabe Benutzername: Fehlende Angabe E-Mail Adresse: Fehlende Angabe"
#      And user populates field "Vorname*" with "XTAA"
#      And user populates field "Nachname*" with "User"
#      And user populates field "Benutzername*" with "xtaauser"
#      And user populates field "E-Mail Adresse*" with "ilinca.bulgarea@mhp.com"
#      And user populates field "Stadt" with "Cluj"
#      And user selects from dropdown "Land" "Romania"
#      And user populates field "Abteilung" with "Testing"
#      And user populates field "Mitarbeiternummer" with "x124248"
#      And user selects from dropdown "Erste bevorzugte Sprache" "Englisch"
#      And user selects from dropdown "Zweite bevorzugte Sprache" "Deutsch"
#      And User selects date "16-June-2022" from "Gültigkeitsdauer des Benutzerkontos"
#      And user presses "Speichern"
#      #Then "Benutzer" is "erfolgreich erstellt"
#      Then user sees pagebody info "XTAA User XTA Dealer Sub Persönliche Informationen Kontoinformationen Kontaktdaten Weitere Informationen Präferenzen"
#      Then user sees info "XTAA User xtaauser Testing x124248 ilinca.bulgarea@mhp.com Englisch Deutsch Cluj Romania 16. Juni 2022"
#      Then user logs out of PPN lite

#@PPN2-214
#Scenario: Global Admin - Update User
#    Given "xtacoordinator" is on Ppnadmin home page
#	When user navigates to "Benutzer" tab
#	And user searches for "xtaauser" in "Nach Benutzern suchen"
#	And user selects "xtaauser" by cell menu option "Benutzerdetails anzeigen"
#	#Then user sees headerone info "XTAA User"
#	Then user sees headerfour info "XTA Dealer Sub"
#	And user presses circle button "Zurück"
#	And user selects "xtaauser" by cell menu option "Benutzer bearbeiten"
#	Then user sees headertwo info "Benutzer bearbeiten"
#	And user presses circle button "Zurück"
#	And user selects by table entry "xtaauser"
#	Then user sees headerone info "XTAA User"
#	Then user sees headerfour info "XTA Dealer Sub"
#	Then user sees pagebody info "Persönliche Informationen Kontoinformationen Kontaktdaten Weitere Informationen Präferenzen"
#    And selects "Benutzer bearbeiten" from Aktionen
#    Then user sees headertwo info "Benutzer bearbeiten"
#    Then field "Gültigkeitsdauer des Benutzerkontos" is disabled
#    And user populates field "Nachname" with "XTAA Testuser"
#	And user populates field "E-Mail Adresse" with "bulgarea.ilinca@mhp.com"
#	And user populates field "Straße" with "Constantin Brancusi"
#	And user populates field "Stadt" with "Cluj"
#	And user populates field "Abteilung" with "aut.test"
#	And user populates field "Tätigkeitsbezeichnung" with "Support"
#	And User selects date "02-February-2016" from "Eintrittsdatum"
#    And user selects from dropdown "Zweite bevorzugte Sprache" "Deutsch"
#	And user selects from dropdown "Dritte bevorzugte Sprache" "Russisch"
# 	And user presses "Speichern"
#    Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
#	Then user sees info "XTAA XTAA Testuser xtaauser Registriert bulgarea.ilinca@mhp.com Constantin Brancusi Cluj Romania aut.test Support x124248 02. Februar 2016 Englisch Deutsch Russisch"
#    Then user logs out of PPN lite
#
#@PPN2-440
# Scenario: Global Admin - Deactivate User
#    Given "xtaglobal" is on Ppnadmin home page
#	When user navigates to "Benutzer" tab
#	And user searches for "xtaauser" in "Nach Benutzern suchen"
#	And user selects by table entry "xtaauser"
#    And selects "Benutzer bearbeiten" from Aktionen
#    And user selects from dropdown "Account Status*" "Deaktiviert"
#    And user presses "Speichern"
#    Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
#	Then user sees info "XTAA XTAA Testuser xtaauser Deaktiviert bulgarea.ilinca@mhp.com Constantin Brancusi Cluj Romania aut.test Support x124248 02. Februar 2016 Englisch Deutsch Russisch"
#    Then user logs out of PPN lite
#
#@PPN2-217
#Scenario: Global Admin - Delete User
#    Given "xtaglobal" is on Ppnadmin home page
#	When user navigates to "Benutzer" tab
#	And user searches for "xtaauser" in "Nach Benutzern suchen"
#	And user selects "xtaauser" by cell menu option "Benutzer löschen"
#	Then user sees pagebody info "Löschen bestätigen"
#  	And user presses "Abbrechen"
#	And user selects by table entry "xtaauser"
#    And selects "Benutzer löschen" from Aktionen
#	And user presses "Löschen"
#    Then "Der Benutzer" is "wurde erfolgreich gelöscht"
#    Then user logs out of PPN lite
 
    @PPN2-414
	Scenario: Global Admin - Show User's permisions
	    Given "xtacoordinator" is on Ppnadmin home page
		When user navigates to "Benutzer" tab
		And user searches for "xtauser" in "Nach Benutzern suchen"
		And user selects "xtauser" by cell menu option "Berechtigungen anzeigen"
		#Then user sees pagebody info "Zur Permission-Page im Grouplifecycle"
		#And user presses circle button "Zurück"
		#And user selects by table entry "xtauser"
		#When user navigates to "Permissions" second row tab
		#Then user clicks link "Zur Permission-Page im Grouplifecycle" 	
    	#Then user sees headerone info "User XTA User"
    	#Then user sees pagebody info "Berechtigungen Anzeigename Technischer Name Typ Mitgliedsstatus PPN_STANDARD_USER PPN_STANDARD_USER Applikationsrolle direktes Mitglied"
    	#Then user logs out of PPN lite

    #not implemented yet 
    #@PPN2-709
	#Scenario: Global Admin - Show User's permisions 
         #Given "xtauser" is on Ppnadmin home page

     