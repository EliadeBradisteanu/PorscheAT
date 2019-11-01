@PPN2-372
Feature: Group Management Add, Update and Delete Group

    #Background:
		#Given user is on PPNAdmin home page
        #When user navigates to "Gruppen" tab
	
	@PPN2-374 #@issue:PPN2-374
	Scenario: Global Admin - Create Group	
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab	
		And selects "Neue Gruppe erstellen" from Aktionen
		Then user sees pagebody info "Gruppe erstellen"
		And user selects from dropdown "Select…" "Applikation"
		And user presses "Weiter"
		Then user sees headertwo info "Neue Gruppe erstellen" 
		And user presses "Speichern"
	    Then user sees error message "Anzeigename: Eingabge erforderlich. Application Manager: Eingabge erforderlich. Business Process Owner: Eingabge erforderlich. Labeled Uri: Eingabge erforderlich. Applikations Typ: Eingabge erforderlich. Realm Position: Eingabge erforderlich. Gruppen Manager Benutzername: Eingabge erforderlich."
	 	Then dropdown "Typ" is disabled
		And user populates field "Anzeigename*" with "XTAA Applikation"		
		And user populates field "Beschreibung" with "XTAA Applikation"
		And user selects from dropdown "Business Types" "Porsche AG, Porsche Importeur, Vertragspartner"
		And user selects from dropdown "Backend" "Backend 1"
		And user populates field "Support Kontakt" with "xtagroupcoordinator"
		And user populates field "Support E-Mail Adresse" with "pacc@pacc.com"
		And user populates field "Application Manager" with "xtagroupmanager"
		And user populates field "Business Process Owner" with "xtagroupmanager"
		And user populates field "Labeled Uri" with "test"
		And user ticks checkbox "App Sichtbarkeit"
		And user selects from dropdown "Applikations Typ" "Application"
		And user populates field "Realm Position" with "1"
		And user populates field "Gruppen Manager Benutzername*" with "xtagroupmanager"
		And user presses "Speichern"
		Then "Die Gruppe" is "wurde erfolgreich erstellt"
		Then user sees info "XTAA Applikation Porsche AG Porsche Importeur Vertragspartner Backend 1 xtagroupcoordinator pacc@pacc.com xtagroupmanager test Application 1"
		Then user logs out of PPN lite
    
	@PPN2-375
	Scenario: Global Admin - Edit Group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTAA Applikation"
		And user selects by table entry "XTAA Applikation"
		Then user sees headerone info "XTAA Applikation"
		Then user sees headerfour info "Applikation"
		Then user sees pagebody info "Basisinformation"
		Then user sees info "XTAA Applikation Porsche AG Porsche Importeur Vertragspartner Backend 1 xtagroupcoordinator pacc@pacc.com xtagroupmanager test Application 1"
		And user presses circle button "Zurück"
		And user selects "XTAA Applikation" by cell menu option "Gruppendetails anzeigen"
		Then user sees headerone info "XTAA Applikation"
		Then user sees headerfour info "Applikation"
		Then user sees pagebody info "Basisinformation"
		Then user sees info "XTAA Applikation Porsche AG Porsche Importeur Vertragspartner Backend 1 xtagroupcoordinator pacc@pacc.com xtagroupmanager test Application 1"
		And selects "Gruppe bearbeiten" from Aktionen
		Then user sees headertwo info "Gruppe bearbeiten" 
		Then dropdown "Typ" is disabled
		Then field "Technischer Name*" is disabled
		And user populates field "Anzeigename" with "XTAA@-/Applikation"
		And user populates field "Beschreibung" with "this group is for tests"
		And user presses "Speichern"
		Then "Die Gruppe" is "wurde erfolgreich bearbeitet"
		Then user sees info "XTAA@-/Applikation xtaa_applikation this group is for tests Vertragspartner, Porsche Importeur, Porsche AG xtagroupcoordinator pacc@pacc.com Backend 1 xtagroupmanager test Application 1"
		Then user logs out of PPN lite
			

    #adjut to the actual test scenario
    #B- cell menu user afranklin to be added
	@PPN2-388
	Scenario: Global Admin: Add User to group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
		And user selects by table entry "XTAA@-/Applikation"
		And selects "Benutzer hinzufügen" from Aktionen
		Then user sees headerone info "Benutzer hinzufügen"
		Then user sees headerfour info "XTAA@-/Applikation"
		Then button "Auswahl hinzufügen (0)" is disabled
		And user populates field "Benutzer durchsuchen" with "afranklin"
		And user selects checkbox from search "afranklin"
		And user presses "Auswahl hinzufügen (1)"
		Then "Benutzer" is "wurde erfolgreich hinzugefügt"
		Then checkbox for "afranklin" is disabled
		And user presses circle button "Zurück"
		And user navigates to "Mitglieder" second row tab
		And user sees pagebody info "Franklin, Aretha afranklin"
		Then user logs out of PPN lite


   @PPN2-455
   Scenario: Global Admin: Add SSO Mapping
       Given "xtaglobal" is on Ppnadmin home page
       When user navigates to "Gruppen" tab
       And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
       And user selects by table entry "XTAA@-/Applikation"
       When user navigates to "Mitglieder" second row tab
       And user populates field "Benutzer durchsuchen" with "afranklin"   
       And user selects "afranklin" by cell menu option "SSO-Mapping Anlegen"
       Then user sees headertwo info "SSO Mapping hinzufügen"
       And user presses "Speichern"
	   Then user sees error message "SSO-Benutzername: Eingabge erforderlich. SSO-Passwort: Eingabge erforderlich."
	   Then field "Name der Application" is disabled
       And user populates field "SSO-Benutzername" with "ssoafranklin"
       And user populates field "SSO-Passwort" with "Hallo123"
       And user presses "Speichern"
	   Then "SSO-Mapping von" is "erfolgreich angelegt."
	   And user sees pagebody info "Franklin, Aretha afranklin ssoafranklin"
       Then user logs out of PPN lite

  @PPN2-535
  Scenario: Global Admin: Edit SSO Mapping
      Given "xtaglobal" is on Ppnadmin home page
      When user navigates to "Gruppen" tab
      And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
      And user selects by table entry "XTAA@-/Applikation"
      And user navigates to "Mitglieder" second row tab
      And user populates field "Benutzer durchsuchen" with "afranklin"
      And user selects "afranklin" by cell menu option "SSO-Mapping bearbeiten"
      Then user sees headertwo info "SSO Mapping bearbeiten"
      Then field "Name der Application" is disabled
      And user populates field "SSO-Benutzername" with "ssoafranklin"
      And user populates field "SSO-Passwort" with "Hallo123!"
      And user presses "Speichern"
      Then "SSO-Mapping" is "erfolgreich geändert"
      And user sees pagebody info "Franklin, Aretha afranklin ssoafranklin"
      Then user logs out of PPN lite 

  @PPN2-567
  Scenario: Global Admin: Remove SSO Mapping
      Given "xtaglobal" is on Ppnadmin home page
      When user navigates to "Gruppen" tab
      And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
      And user selects by table entry "XTAA@-/Applikation" 
      And user navigates to "Mitglieder" second row tab
      And user populates field "Benutzer durchsuchen" with "afranklin"
      And user selects "afranklin" by cell menu option "SSO-Mapping entfernen"
      And user presses "Bestätigen"
      
      #B- for deleteing sso map, delete it from user tab
      And user selects by subtable entry "afranklin"
      And user navigates to "SSO-Mappings" second row tab
      And user selects "ssoafranklin" by cell menu option "SSO Mapping entfernen"
	  And user presses "Löschen"
      
      
	  #Then "SSO-Mapping" is "for"
      Then user logs out of PPN lite     

    @PPN2-462
    Scenario: N * Add User indirectly to a group
        Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
        And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
        And user selects by table entry "XTAA@-/Applikation"        
        When user navigates to "Mitglieder" second row tab
        Then user doesn't see info "xtauser"
		Then user logs out of PPN lite


	@PPN2-389
	Scenario: Global Admin: Remove User from Group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
        And user selects by table entry "XTAA@-/Applikation"
        And selects "Benutzer entfernen" from Aktionen
		And user populates field "Benutzer durchsuchen" with "afranklin"
		Then button "Auswahl entfernen (0)" is disabled
		And user selects checkbox from search "afranklin"
    	And user presses "Auswahl entfernen (1)"
		Then "Benutzer" is "wurde erfolgreich entfernt von"
		Then user logs out of PPN lite

    @PPN2-376
	Scenario: Group Admin: Delete Group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
	    And user populates field "Gruppen durchsuchen" with "XTAA@-/Applikation"
	    And user selects by table entry "XTAA@-/Applikation"
		And selects "Gruppe löschen" from Aktionen
		Then user sees pagebody info "Gruppe löschen"
		And user presses "Abbrechen"
		And user presses circle button "Zurück"
		And user selects "XTAA@-/Applikation" by cell menu option "Gruppe löschen"
		Then user sees pagebody info "Gruppe löschen"
		And user presses "Bestätigen"
		Then "Die Gruppe" is "wurde erfolgreich gelöscht"
		Then user logs out of PPN lite
		
	@PPN2-390
    Scenario: Global Admin: Add Group
      Given "xtaglobal" is on Ppnadmin home page
      When user navigates to "Gruppen" tab
      And user populates field "Gruppen durchsuchen" with "XTA Application"
      And user selects by table entry "XTA Application"      
      And selects "Gruppen hinzufügen" from Aktionen
      Then user sees headerone info "Gruppen hinzufügen"
	  Then user sees headerfour info "XTA Application"
      And user populates field "Gruppen durchsuchen" with "XTA Applicationrole"
      Then button "Auswahl hinzufügen (0)" is disabled
      And user selects checkbox from search "xta_applicationrole"
      And user presses "Auswahl hinzufügen (1)"
      Then "Gruppe" is "wurde erfolgreich hinzugefügt zu"
      Then checkbox for "xta_applicationrole" is disabled
	  Then user logs out of PPN lite
	  
	@PPN2-391
	Scenario: Global Admin: Remove Group
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Application"
		And user selects by table entry "XTA Application"
		And selects "Gruppen entfernen" from Aktionen
		Then user sees headerone info "Gruppen entfernen"
	    Then user sees headerfour info "XTA Application" 
		And user populates field "Gruppen durchsuchen" with "XTA Applicationrole"
		Then button "Auswahl entfernen (0)" is disabled
 		And user selects checkbox from search "xta_applicationrole"
		And user presses "Auswahl entfernen (1)"
		And user presses "Bestätigen"
		Then "Gruppe" is "wurde erfolgreich entfernt aus Applikation:"
		Then user logs out of PPN lite  
		
   @PPN2-441
	Scenario: Global Admin: Add Group Coordinator and remove it	    
		Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Application"
		And user selects by table entry "XTA Application"
		And selects "Koordinatoren hinzufügen" from Aktionen
		Then user sees headerone info "Koordinatoren hinzufügen"
	    Then user sees headerfour info "XTA Application"
		And user populates field "Benutzer durchsuchen" with "xtagroupcoordinator"
		Then button "Auswahl hinzufügen (0)" is disabled
		And user selects checkbox from search "xtagroupcoordinator"
		And user presses "Auswahl hinzufügen (1)"
		Then "Benutzer wurde erfolgreich als Koordinator zu" is "hinzugefügt"
		Then checkbox for "xtagroupcoordinator" is disabled
		And user presses "Abbrechen"
		And selects "Koordinatoren entfernen" from Aktionen
		Then user sees headerone info "Koordinatoren entfernen"
	    Then user sees headerfour info "XTA Application"
	    And user populates field "Benutzer durchsuchen" with "xtagroupcoordinator"
	    Then button "Auswahl entfernen (0)" is disabled
	    And user selects checkbox from search "xtagroupcoordinator"
		And user presses "Auswahl entfernen (1)"
		And user presses "Bestätigen"
		Then "Benutzer wurde erfolgreich als Koordinator von" is "entfernt"	
		Then user logs out of PPN lite	

    # B - xtagroupmanager does not see XTA Application
    @PPN2-442
	Scenario: Global Admin: Add Group Coordinator and remove it 
		Given "xtagroupmanager" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Application"
		#And user selects by table entry "XTA Application"
		#And selects "Koordinatoren hinzufügen" from Aktionen
		#Then user sees headerone info "Koordinatoren hinzufügen"
	    #Then user sees headerfour info "XTA Application"
		#And user populates field "Benutzer durchsuchen" with "xtagroupcoordinator"
		#Then button "Auswahl hinzufügen (0)" is disabled
		#And user selects checkbox from search "xtagroupcoordinator"
		#And user presses "Auswahl hinzufügen (1)"
		#Then "Benutzer wurde erfolgreich als Koordinator zu" is "hinzugefügt"
		#Then checkbox for "xtagroupcoordinator" is disabled
		#And user presses "Abbrechen"
		#And selects "Koordinatoren entfernen" from Aktionen
		#Then user sees headerone info "Koordinatoren entfernen"
	    #Then user sees headerfour info "XTA Application"
	    #And user populates field "Benutzer durchsuchen" with "xtagroupcoordinator"
	    #Then button "Auswahl entfernen (0)" is disabled
	    #And user selects checkbox from search "xtagroupcoordinator"
		#And user presses "Auswahl entfernen (1)"
		#And user presses "Bestätigen"
		#Then "Benutzer wurde erfolgreich als Koordinator von" is "entfernt"	
		#Then user logs out of PPN lite
		
   @PPN2-458
	Scenario: Global Admin: N* Add User to group
	    #B- Cannot use aktionen
	    #Given "xtagroupcoordinator" is on Ppnadmin home page
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Permissiongroup"
		And user selects by table entry "XTA Permissiongroup"
		Then user sees headerone info "XTA Permissiongroup"
	    Then user sees headerfour info "Berechtigungsgruppe"		
		And selects "Benutzer hinzufügen" from Aktionen
		And user populates field "Benutzer durchsuchen" with "xtauser"
		Then button "Auswahl hinzufügen (0)" is disabled
		Then checkbox for "xtauser" is disabled
		Then user logs out of PPN lite		
   
   @PPN2-460
   Scenario: N* Group Admin: add yourself to group - group coordinator
       #B- Cannot use aktionen
       #Given "xtagroupcoordinator" is on Ppnadmin home page
       Given "xtaglobal" is on Ppnadmin home page
       When user navigates to "Gruppen" tab
       And user populates field "Gruppen durchsuchen" with "XTA Application"
       And user selects by table entry "XTA Application"
       And selects "Benutzer hinzufügen" from Aktionen
       And user populates field "Benutzer durchsuchen" with "xtaglobal"
       #Then checkbox for "xtaglobal" is disabled
	   Then user logs out of PPN lite 
	   
   @PPN2-463
    Scenario: N* Group Admin - add yourself to group -  group manager
        Given "xtagroupmanager" is on Ppnadmin home page
        #When user navigates to "Gruppen" tab
		#And user populates field "Gruppen durchsuchen" with "XTA Applicationrole"
		#And user selects by table entry "XTA Applicationrole"	
		#And selects "Benutzer hinzufügen" from Aktionen
		#And user populates field "Benutzer durchsuchen" with "xtagroupmanager"
		#Then button "Auswahl hinzufügen (0)" is disabled
		#Then checkbox for "xtagroupmanager" is disabled
		#Then user logs out of PPN lite	 
		
		
		
	#@PPN2-735 moved to 375
	#Scenario: Special Characters are not allowed when editing a group - but they should
	    #Given "xtaglobal" is on Ppnadmin home page
        #When user navigates to "Gruppen" tab
		#And user populates field "Gruppen durchsuchen" with "XTAA Applikation"
		#And user selects by table entry "XTAA Applikation"
		#Then user sees pagebody info "XTAA Applikation"
		#Then user sees info "XTAA Applikation Porsche AG Porsche Importeur Vertragspartner Backend 1 xtagroupcoordinator pacc@pacc.com xtagroupmanager test Application 1"
	    #And selects "Gruppe bearbeiten" from Aktionen
		#And user populates field "Anzeigename" with "XTAA@-/Applikation" 
        #And user populates field "Beschreibung" with "this group is for tests"	
		#And user presses "Speichern"	
		
    #@PPN2-740 - obsolete because of 735
	 		  
