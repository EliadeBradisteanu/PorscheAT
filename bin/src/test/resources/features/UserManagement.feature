@PPN2-215
Feature: User Management
# BUG PERMISSIONS OF MANAGER AND COORDINATOR

    @PPN2-482 # contains 733
    Scenario: User creation process Part I Coordinator
        Given "xtacoordinator" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
        And user populates field "Nach Organisationen suchen" with "XTA Subsidiary"
        And user selects by table entry "XTA Subsidiary"
        And selects "Neuen Benutzer erstellen" from Aktionen
        Then user sees headertwo info "Neuen Benutzer erstellen"
        And user presses "Speichern"
	    Then user sees error message "Vorname: Fehlende Angabe Nachname: Fehlende Angabe Benutzername: Fehlende Angabe E-Mail Adresse: Fehlende Angabe"
        And user populates field "Benutzername" with "xtaagroupmanager"
        And user populates field "Vorname" with "XTA"
        And user populates field "Nachname" with "Groupmanager-'"
        And user populates field "Abteilung" with "Testing"
        And user populates field "Mitarbeiternummer" with "x124248"
        And user populates field "E-Mail Adresse" with "ilinca.bulgarea@mhp.com"
        And user selects from dropdown "Erste bevorzugte Sprache" "Englisch"
        And user selects from dropdown "Zweite bevorzugte Sprache" "Deutsch"
        And user populates field "Stadt" with "Cluj"
        And user selects from dropdown "Land" "Romania"
        And User selects date "16-June-2022" from "Gültigkeitsdauer des Benutzerkontos"
        And user presses "Speichern"
        #Then "Der Benutzer" is "wurde erfolgreich erstellt"
        #Then user sees info "Registriert"
        Then user logs out of PPN lite
        #Then email will be sent to PPN Manager        
   
   @PPN2-483 
   Scenario: User creation process part II : Manager
        Given "xtamanager" is on Ppnadmin home page       
        When user navigates to "Benutzer" tab
        And user populates field "Nach Benutzern suche" with "xtaagroupmanager"
        And user selects "xtaagroupmanager" by cell menu option "Benutzer bearbeiten"
	    Then user sees headertwo info "Benutzer bearbeiten"
        And user selects from dropdown "Account Status" "Aktiviert"
        And user presses "Speichern"
        Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
        Then user sees info "Aktiviert"
        Then user logs out of PPN lite
   
   #bug permissions
   @PPN2-503
   Scenario: Assign primary job role ( PPN Manger and PPN Coordinator)
       Given "xtamanager" is on Ppnadmin home page 
       When user navigates to "Benutzer" tab
       And user populates field "Nach Benutzern suche" with "xtaagroupmanager"
       And user selects "xtaagroupmanager" by cell menu option "Benutzer bearbeiten"
	   Then user sees headertwo info "Benutzer bearbeiten"
       #And user selects "XTA Berechtigungsgruppe" from "Hauptrolle" 
       #And User presses Save
       #Then Hauptrolle "XTA Berechtigungsgruppe wurde erfolgreich als Hauptrolle gesetzt"
   
   
    #B- can enter past date
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
       And user presses "Speichern"
	   Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
	   #Then user sees info "22. Juli 2024 Aktiviert"
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
       And user presses "Speichern"
       Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
       #Then user sees info "Requested" and "Accountgueltigkeit des Benutzers" set to "22.07.2020"
       #Should see requested
       #Then user sees info "22. Juli 2024"
       Then user logs out of PPN lite
       
    @PPN2-610
	Scenario: PPN Coordinator: Change Account Status
		Given "xtacoordinator" is on Ppnadmin home page
		When user navigates to "Benutzer" tab
		And user searches for "xtaagroupmanager" in "Nach Benutzern suchen"
		And user selects by table entry "xtaagroupmanager"
		And selects "Benutzer bearbeiten" from Aktionen		
		#And user selects from dropdown "Account Status" "Verlängerung angefragt"
		#And user presses "Speichern"
		#Then "Der Benutzer" is "wurde erfolgreich bearbeitet"		
		#Then user sees info "Verlängerung angefragt"
		#And selects "Benutzer bearbeiten" from Aktionen
        Then user sees pagebody info "Benutzer bearbeiten"
        And user selects from dropdown "Account Status*" "Deaktiviert"
		And user presses "Speichern"
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
        
	@PPN2-707 # contains 708,736
    Scenario: PPN User: Show my profile + Edit my own profile
       Given "xtauser" is on Ppnadmin home page   
       Then user clicks on user "User XTA User (PPN_STANDARD_USER)" and select option "Profil anzeigen"
	   Then user sees headerone info "User XTA User"
	   Then user sees headerfour info "XTA Dealer Sub"
	   Then user sees info "User XTA User xtauser Aktiviert xtauser@porsche.de"
	   
	   #708
	   Then user clicks on user "User XTA User (PPN_STANDARD_USER)" and select option "Profil bearbeiten"
	    Then user sees headertwo info "Benutzer bearbeiten"
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
        And user presses "Speichern"
        Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
        Then user clicks on user "User XTA User (PPN_STANDARD_USER)" and select option "Profil bearbeiten"
	    And user populates field "Mobiltelefon" with ""
        And user populates field "Straße" with ""
        And user presses "Speichern"
        Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
	   
       Then user logs out of PPN lite
     
       
    @PPN2-611
    Scenario: N* PPN Coordiantor sets Account status directly to Active  
        Given "xtacoordinator" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
	    And user searches for "XTA" in "Nach Organisationen suchen" 
	    And user selects by table entry "XTA Dealer Sub"	     
        And selects "Neuen Benutzer erstellen" from Aktionen
        And user populates field "Benutzername" with "xtatest"
        And user populates field "Vorname" with "XTA"
        And user populates field "Nachname" with "test"       
        And user populates field "E-Mail Adresse" with "ilinca.bulgarea@mhp.com"        
        And user selects from dropdown "Account Status" "Aktiviert"
        And user presses "Speichern"
        Then user sees error message "Account Status: Fehlende Angabe"
        Then user logs out of PPN lite 
 
    @PPN2-642
    Scenario: Use Case Szenario 1 Pruefung der Sichtrechte Org   
          Given "xtauser" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Subsidiary XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Department_Sub XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO"
          #Then user logs out of PPN lite
    
       
    @PPN2-644-1
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org       
          Given "xtamanager" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"
    
    @PPN2-644-2
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org       
          Given "xtamanagerio" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Subsidiary XTA_Dealer_Network XTA_Department_Sub"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Dealers XTA_Dealer_Sub"
    
    @PPN2-644-3
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org       
          Given "xtacoordinator" is on Ppnadmin home page
          When user navigates to "Organisationen" tab  
          Then user sees organisations "XTA_Subsidiary XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Department_Sub"
    
    @PPN2-644-4
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org   
          Given "xtauserio" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Importer_IO XTA_Dealer_IO"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"
       
          
          #Given user relogs as "xtacoordinator"
           #Then user logs out of PPN lite
          #Given user relogs as "xtauserio"
          #Then user logs out of PPN lite
          
   @PPN2-645-1
   Scenario: Use Case Szcenario 4: Pruefung der Sichtrechte Orgs       
          Given "xtaglobal" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          And user searches for "XTA" in "Nach Organisationen suchen"
          Then user sees organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"
   
   @PPN2-645-2
   Scenario: Use Case Szcenario 4: Pruefung der Sichtrechte Orgs       
          Given "xtagroupmanager" is on Ppnadmin home page
          When user navigates to "Organisationen" tab      
          And user searches for "XTA" in "Nach Organisationen suchen"
          Then user sees organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"

 		  
   @PPN2-734 # contains 739
   Scenario: Special Characters are not allowed in the Names - but they should  	  
	    Given "xtacoordinator" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
        And user populates field "Nach Organisationen suchen" with "XTA Subsidiary"
        And user selects by table entry "XTA Subsidiary"
        And selects "Neuen Benutzer erstellen" from Aktionen
        And user populates field "Benutzername" with "xta'dealer"
        And user populates field "Nachname" with "xta'd"
        Then user sees error message "Benutzername: Ungültiges Zeichen"
        Then user logs out of PPN lite	
	    #delete the above created user whwn special chars are allowd
 	        
 
        
  
    #@PPN2-708 # in 707
    #Scenario: PPN User: Edit my own profile
        #Given "xtauser" is on Ppnadmin home page    
        #Then user clicks on user "User XTA User (PPN_STANDARD_USER)" and select option "Profil bearbeiten"
	    #Then user sees headertwo info "Benutzer bearbeiten"
	    #Then dropdown "Akademischer Titel" is disabled
		#Then field "Vorname*" is disabled
	    #Then field "Nachname*" is disabled
	    #Then field "Benutzername*" is disabled
	    #Then dropdown "Geschlecht" is disabled
	    #Then field "E-Mail Adresse*" is disabled
	    #Then field "Gültigkeitsdauer des Benutzerkontos" is disabled
	    #Then dropdown "Account Status*" is disabled
        #And user populates field "Mobiltelefon" with "+49-123-456789"
        #And user populates field "Straße" with "Constantin Brancusi"
        #And user presses "Speichern"
        #Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
        #Then user clicks on user "User XTA User (PPN_STANDARD_USER)" and select option "Profil bearbeiten"
	    #And user populates field "Mobiltelefon" with ""
        #And user populates field "Straße" with ""
        #And user presses "Speichern"
        #Then "Der Benutzer" is "wurde erfolgreich bearbeitet"
        #Then user logs out of PPN lite      
        
   #@PPN2-733 in 482
   #Scenario: Error Message when adding characters that are not allowed       
          #Given "xtamanager" is on Ppnadmin home page
          #When user navigates to "Benutzer" tab
		  #And user searches for "xtauser" in "Nach Benutzern suchen"
          #And user selects by table entry "xtauser"
		  #Then user sees pagebody info "User XTA User"
		  #And selects "Benutzer bearbeiten" from Aktionen	
		  #And user populates field "Nachname" with "------"
		  #And user presses "Speichern"
          #Then user sees error message "Nachname: Unbekannter Fehler" 
		  #Then "Fehler" is "beim Ändern des Benutzers"
		  #Then user logs out of PPN lite     
        
    #@PPN2-736 in 707
    #Scenario: Show users profile   
	      #Given "xtacoordinator" is on Ppnadmin home page	            
          #When user navigates to "Benutzer" tab
          #And user populates field "Nach Benutzern suche" with "xtauser"
          #And user selects by table entry "xtauser"
          #Then user sees pagebody info "User XTA User XTA Dealer Sub" 
          #Then user logs out of PPN lite     
   
   #@PPN2-739 # same as 734
   #Scenario: N* Add User with special characters  	  
	    #Given "xtacoordinator" is on Ppnadmin home page
        #When user navigates to "Organisationen" tab
        #And user populates field "Nach Organisationen suchen" with "XTA Subsidiary"
        #And user selects by table entry "XTA Subsidiary"
        #Then user sees pagebody info "XTA Subsidiary"
        #And selects "Neuen Benutzer erstellen" from Aktionen
        #Then user sees pagebody info "Neuen Benutzer erstellen"        
        #And user populates field "Vorname*" with "XTA"
        #And user populates field "Nachname*" with "Dealer"
        #And user populates field "Benutzername*" with "xta'dealer"       
        #And user populates field "E-Mail Adresse" with "xta@mhp.com"      
        #And user presses "Speichern"
        #Then user sees error message "Benutzername: Ungültiges Zeichen"
        #Then user logs out of PPN lite     
        
        
        
        
        
              	  