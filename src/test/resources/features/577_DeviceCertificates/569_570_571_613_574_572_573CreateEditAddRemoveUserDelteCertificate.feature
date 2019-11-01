@PPN2-577
Feature: Device Certificates
#certificate names have to be unique in serenity.properties there is an ending to the name off the cert witch is incremented	
	
	@PPN2-569
	Scenario: PPN Manager - Create Device Certificate	
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
		And user selects by table entry "XTA Dealer Sub"
		And selects "Neues Gerätezertifikat erstellen" from Aktionen 
		Then user sees headerthree info "Neues Gerätezertifikat erstellen" 
		Then dropdown "Status*" is disabled
        Then field "Organisation*" is disabled
        Then field "Ablaufdatum" is disabled
        Then dropdown "Registrierungsstatus*" is disabled   	       
        And user presses "Speichern & Benutzer zuweisen"
        Then user sees error message "Es gibt 4 Felder welche Ihre Aufmerksamkeit benötigen"
	    And user populates field "Technischer Name*" with "xtagerätezertifikat"
        And user populates field "Anzeigename*" with "xtagerätezertifikat"
        And user populates field "Besitzer*" with "xtauser"
        And user populates field "Import-Passwort*" with "Hallo123!"
        And user populates field "Seriennummer" with "123456789"
        And user selects from dropdown "Typ*" "Sonstiges"
        And user presses "Speichern & Benutzer zuweisen"
        Then "Gerätezertifikat" is "erfolgreich erstellt"
        And user presses circle button "Zurück zu"
        Then user sees headerthree info "xtagerätezertifikat"
        Then user sees headerfive info "Gerätezertifikatsdetails"
        Then user sees info "xtagerätezertifikat System angefordert xtauser Hallo123! Angefragt Sonstiges"
	    Then user logs out of PPN lite
        
     @PPN2-570 #Contains #485(Show Device Certificates within an organisation) and part of 613                   
	 Scenario: PPN Manager - Edit Device Certificates
	    #Given "xtamanager" is on Ppnadmin home page
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
		And user selects by table entry "XTA Dealer Sub"
		And user navigates to "Gerätezertifikate" second row tab
		And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
		Then user sees "Zertifikate" search results for "xtagerätezertifikat xtauser"
	    And user selects "xtagerätezertifikat" by cell menu option "Gerätezertifikat bearbeiten"
	    Then user sees headerthree info "Gerätezertifikat bearbeiten"
		And user presses "Abbrechen"
		And user selects by subtable entry "xtagerätezertifikat" 
		Then user sees headerthree info "xtagerätezertifikat"
		Then user sees headerfive info "Gerätezertifikatsdetails"
		Then user sees info "xtagerätezertifikat 123456789 xtauser Hallo123! Sonstiges"
		And selects "Gerätezertifikat bearbeiten" from Aktionen
		Then user sees headerthree info "Gerätezertifikat bearbeiten"
		Then dropdown "Status*" is disabled
        Then field "Technischer Name*" is disabled
        Then field "Organisation*" is disabled
        Then field "Ablaufdatum" is disabled
        Then dropdown "Typ*" is disabled        
        Then dropdown "Registrierungsstatus*" is disabled
		And user populates field "Besitzer*" with "xtamanager"
		And user populates field "Beschreibung" with "Gerätezertifikat Testing"
		And user populates field "Import-Passwort*" with "Goodbye12345!"
		And user presses "Speichern & Benutzer zuweisen"
        Then "Das Gerätezertifikat" is "wurde erfolgreich geändert"
		Then user sees info "xtagerätezertifikat Gerätezertifikat Testing 123456789 xtamanager Goodbye12345! Sonstiges"
        Then user logs out of PPN lite

     @PPN2-571 # Contains #613(PPN Manager : Show Details and Users of a Device Certificate) 
	 Scenario: PPN Manager: Add Users to device certificate
	    #Given "xtamanager" is on Ppnadmin home page
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
		And user selects by table entry "XTA Dealer Sub"
		And user navigates to "Gerätezertifikate" second row tab
		And user selects by subtable entry "xtagerätezertifikat" 
		And selects "Benutzer hinzufügen" from Aktionen
		Then user sees headerthree info "Benutzer zu Gerätezertifikat hinzufügen"
		And user searches for "xtacoordinator" in "Nach Benutzern suchen"		
		Then button "Auswahl hinzufügen (0)" is disabled
		And user selects checkbox from search "xtacoordinator"
		And user presses "Auswahl hinzufügen (1)"
		Then "Benutzer erfolgreich zu" is "hinzugefügt"
		Then button "Auswahl hinzufügen (0)" is disabled
        Then checkbox for "xtacoordinator" is disabled
        
        #613
        And user presses "Abbrechen"
        And user navigates to "Benutzer" second row tab
        Then user sees "OrganisationBenutzer" search results for "xtacoordinator"
	    And user sees pagebody info "Name Benutzername Organisation Email Account Status Gültigkeitsdauer des Benutzerkontos"
        And user selects by subtable entry "xtacoordinator"
	    Then user sees headerthree info "XTA Coordinator, User"
		Then user sees headerfive info "XTA Dealers"
        
		Then user logs out of PPN lite
	
	@PPN2-574
	Scenario: N* PPN Manager: Delete Device Certificate
	     #Given "xtamanager" is on Ppnadmin home page	
		 Given "xtaglobal" is on Ppnadmin home page
		 #Given user "xtacoordinator" and "xtagroupcoordinator" are members of the device certificate "xtagerätezertifikat"
		 When user navigates to "Organisationen" tab
		 And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
		 And user selects by table entry "XTA Dealer Sub"
		 And user navigates to "Gerätezertifikate" second row tab
		 And user selects by subtable entry "xtagerätezertifikat"		  
		 And selects "Benutzer hinzufügen" from Aktionen		 
		 And user searches for "xtagroupcoordinator" in "Nach Benutzern suchen"		
		 And user selects checkbox from search "xtagroupcoordinator"
		 And user presses "Auswahl hinzufügen (1)"
		 And user presses "Abbrechen"
		 And selects "Zertifikat Löschen" from Aktionen
		 And user presses "Bestätigen"
		 Then "Fehler beim löschen" is "des Gerätezertifikats"	
	     Then user logs out of PPN lite
	     
	
     @PPN2-572
	 Scenario: PPN Manager: Remove users from device certificate
	    #Given "xtamanager" is on Ppnadmin home page
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
		And user selects by table entry "XTA Dealer Sub"
		And user navigates to "Gerätezertifikate" second row tab
		And user selects by subtable entry "xtagerätezertifikat"	
		And selects "Benutzer entfernen" from Aktionen
		Then user sees headerthree info "Benutzer aus Gerätezertifikat entfernen"
		Then button "Auswahl entfernen (0)" is disabled
		And user selects checkbox from search "xtacoordinator"
		And user selects checkbox from search "xtagroupcoordinator"
		And user presses "Auswahl entfernen (2)"
		Then "Benutzer erfolgreich aus" is "entfernt"
		And user presses "Abbrechen"
		And user navigates to "Benutzer" second row tab
		Then user sees "OrganisationBenutzer" search results for "xtacoordinator"
	    Then user logs out of PPN lite
		
     @PPN2-573
	 Scenario: PPN Manager: Delete Device Certificate
	    #Given "xtamanager" is on Ppnadmin home page
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
		And user selects by table entry "XTA Dealer Sub"
		And user navigates to "Gerätezertifikate" second row tab
		And user selects "xtagerätezertifikat" by cell menu option "Gerätezertifikat löschen"
		Then user sees pagebody info "Gerätezertifikat löschen"
		And user presses "Abbrechen"
		And user selects by subtable entry "xtagerätezertifikat"			
		And selects "Zertifikat Löschen" from Aktionen
		And user presses "Bestätigen"
		Then "Gerätezertifikat" is "erfolgreich gelöscht"
		Then user sees "Zertifikate" search results for "xtagerätezertifikat xtauser"
		And increment zertifikat name
		Then user logs out of PPN lite
	
	