@PPN2-373
Feature: Global Admin: Organisation Management 

    @PPN2-377
	Scenario: Global Admin, Add Organisation
	    #B- xta manager can't create org
	    #Given "xtamanager" is on Ppnadmin home page
	    Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user presses "Zum Organisationsbaum" 
		Then user sees headerone info "Organisationen"		   
	    And User navigates to "Dr. Ing. h.c. F. Porsche AG" by arrow
	    And User navigates to "XTA Department" by arrow
	    And User selects "Neue Organisation erstellen" from context menu of "XTA Region IO"
	    And user selects from dropdown "Business Type wählen" "Vertragspartner"       
        And user presses "Weiter"
	    Then user sees headerthree info "Neue Organisation erstellen"
	    And user presses "Speichern"
	    Then user sees error message "Es gibt 5 Felder welche Ihre Aufmerksamkeit benötigt"
	    Then checkbox "Legale Einheit*" is disabled
	    Then dropdown "Business Type*" is disabled
	    And user populates field "Anzeigename*" with "XTA Importer IOX"
	    And user selects from dropdown "Organisationsstatus*" "Operativ"       
        And user selects from dropdown "Facility Type*" "Supplier"     
	    And user selects from dropdown "Beziehung zur übergeordneten Organisation *" "Ownership"
		And user selects from dropdown "Land*" "Germany"
	    And user selects from dropdown "Kreditkarte" "Visa"  
	    And user presses "Speichern"
	    Then "Die Organisation" is "wurde erfolgreich erstellt"
	    Then user sees info "XTA Importer IOX Vertragspartner Operativ Supplier Ownership Germany Visa"
	    Then user logs out of PPN lite
	
	#create an organisation under XTA Importer IOX so that a manager can't delete XTA Importer IOX org     
	@PPN2-5011
    Scenario: N* Delete Organisation (Manager) : Hubs, Orgs and Units
        Given "xtaglobal" is on Ppnadmin home page    
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Importer IOX" in "Nach Organisationen suchen" 
	    And user selects "XTA Importer IOX" by cell menu option "Neue Organisation erstellen"
	    And user selects from dropdown "Business Type wählen" "Vertragspartner"       
        And user presses "Weiter"
        And user populates field "Anzeigename*" with "XTA Importer IOT"
	    And user selects from dropdown "Organisationsstatus*" "Operativ"       
        And user selects from dropdown "Facility Type*" "Supplier"     
	    And user selects from dropdown "Beziehung zur übergeordneten Organisation *" "Ownership"
		And user selects from dropdown "Land*" "Germany"	    
	    And user presses "Speichern"
	    Then "Die Organisation" is "wurde erfolgreich erstellt"
	    Then user logs out of PPN lite
	    
	@PPN2-501
    Scenario: N* Delete Organisation (Manager) : Hubs, Orgs and Units
        Given "xtamanager" is on Ppnadmin home page         
        And user searches for "XTA Importer IOX" in "Nach Organisationen suchen"
        And user selects by table entry "XTA Importer IOX"
        And selects "Organisation löschen" from Aktionen
        And user presses "Löschen"
        Then "Organisation" is "Das Löschen der Organisation ist nicht erlaubt, weil ihr weitere Organisationen oder Hubs zugeordnet sind"
        Then user logs out of PPN lite     
	    
	
	@PPN2-378
	  Scenario: Global Admin, Edit Organisation
	      Given "xtaglobal" is on Ppnadmin home page
	      When user navigates to "Organisationen" tab
	      And user searches for "XTA Importer IOX" in "Nach Organisationen suchen" 
	      And user selects "XTA Importer IOX" by cell menu option "Organisation bearbeiten"
	      Then user sees headerthree info "Organisation bearbeiten"
	      And user presses "Abbrechen"
	      And user selects by table entry "XTA Importer IOX"
	      Then user sees headerthree info "XTA Importer IOX"
	      Then user sees info "XTA Importer IOX Vertragspartner Operativ Supplier Ownership Germany Visa"
          And selects "Organisation bearbeiten" from Aktionen
          Then user sees headerthree info "Organisation bearbeiten"	
          Then dropdown "Business Type*" is disabled
	      Then checkbox "Legale Einheit*" is disabled
	      Then field "Datum der nächsten Prüfung" is disabled
	      Then field "VW Partnerkey" is disabled
	      And user populates field "Firmenname" with "MHP Support"
	      And user populates field "Stadt" with "Stuttgard"
	      And user populates field "Longitude" with "100"
          And user populates field "Latitude" with "50"
	 	  And user populates field "E-Mail Adresse" with "pacc-acc@mhp.com"	
	      And user populates field "Telefon" with "+40744261481"
          And user populates field "Fax" with "+40744261481"
          And user populates field "Postanschrift Ergänzung" with "lorem"
          And user populates field "Homepage" with "pacc.pacc"
	      And user ticks checkbox "Montag"
	      And user ticks checkbox "Dienstag"
	      And user ticks checkbox "Mittwoch"
	      And user populates field "Porsche Partner-Nr." with "1234567" 
          And user populates field "KVPS Besteller-ID" with "56"
          And user populates field "SAP Kennung" with "45"
          And user populates field "DUNS Kennung" with "123456789"
          And user populates field "Handelsregister-Nr." with "000000056"
          And user populates field "Umsatzsteuer-Identifikationsnr." with "963852"
          And user populates field "Amtsgericht" with "Lorem" 
          And user populates field "Bank" with "Sparrkasse"
          And user populates field "Kontoinhaber" with "xtamanager"
          And user populates field "Kontonummer" with "SP235689"
          And user populates field "Bankleitzahl" with "2"
          And user populates field "IBAN" with "SPK1236547890000000"
          And user populates field "Swift Code (BIC)" with "SPK308OO"
          And user selects from dropdown "Kreditkarte" "Visa Electron"
          And user selects from dropdown "Sterneklassifizierung (für Spezialwerkzeuge)" "**** Facility"
	      And user presses "Speichern"
	      Then "Die Organisation" is "wurde erfolgreich geändert"
		  Then user sees info "XTA Importer IOX MHP Support Operativ Vertragspartner Supplier Ownership Stuttgard Germany 50 100 pacc-acc@mhp.com +40744261481 lorem pacc.pacc 08:00 - 18:00 1234567 56 45 123456789 Lorem Sparrkasse xtamanager SP235689 2 SPK1236547890000000 SPK308OO Visa Electron **** Facility"
	      Then user logs out of PPN lite	
	      
	      
    @PPN2-379 #Contains 737(Show orgs details)
	Scenario: Global Admin, Delete Organisation
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Importer IOX" in "Nach Organisationen suchen"
		
	    #737
	    And user selects "XTA Importer IOX" by cell menu option "Details anzeigen"
	    Then user sees headerthree info "XTA Importer IOX"
	    Then user sees headerfive info "O Supplier | Operativ | Im Organisationsbaum anzeigen"	    
	    Then user sees info "XTA Importer IOX MHP Support Operativ Vertragspartner Supplier Ownership Stuttgard Germany 50 100 pacc-acc@mhp.com +40744261481 lorem pacc.pacc 08:00 - 18:00 1234567 56 45 123456789 Lorem Sparrkasse xtamanager SP235689 2 SPK1236547890000000 SPK308OO Visa Electron **** Facility"
	    And user presses circle button "Zurück"
		And user selects by table entry "XTA Importer IOX"
		Then user sees headerthree info "XTA Importer IOX"
	    Then user sees headerfive info "O Supplier | Operativ | Im Organisationsbaum anzeigen"	    
	    Then user sees info "XTA Importer IOX MHP Support Operativ Vertragspartner Supplier Ownership Stuttgard Germany 50 100 pacc-acc@mhp.com +40744261481 lorem pacc.pacc 08:00 - 18:00 1234567 56 45 123456789 Lorem Sparrkasse xtamanager SP235689 2 SPK1236547890000000 SPK308OO Visa Electron **** Facility"
	    Then user clicks link "Im Organisationsbaum anzeigen"
		Then user sees pagebody info "Organisationen Market Global Dr. Ing. h.c. F. Porsche AG XTA Department XTA Region IO XTA Importer IOX"
		And user presses "Zur Organisationen Startseite"
		
		
		And user searches for "XTA Importer IOT" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Importer IOT"
        And selects "Organisation löschen" from Aktionen 
	    And user presses "Löschen" 
        Then "Org" is "successfully deleted"
        And user presses "Zur Organisationen Startseite"
		And user searches for "XTA Importer IOX" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Importer IOX"
        And selects "Organisation löschen" from Aktionen 
	    And user presses "Löschen" 
        Then "Org" is "successfully deleted"
        Then user logs out of PPN lite 	 
         
        
   #@PPN2-485 moved to dev certificates feature, contained in 570 
	#Scenario: Show Device Certificates within an organisation
		#Given "xtaglobal" is on Ppnadmin home page
		#When user navigates to "Organisationen" tab
		#And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
		#And user selects by table entry "XTA Dealer Sub"
		#Then user sees pagebody info "XTA Dealer Sub Basisinformation" 
		#And user navigates to "Gerätezertifikate" second row tab
		#Then user sees "Zertifikate" search results for "XTA Dealer Sub"   
		#And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
        #Then user logs out of PPN lite	
        
    #@PPN2-737   --> in 379
    #Scenario: Show Organisations details
		#Given "xtamanager" is on Ppnadmin home page
        #When user navigates to "Organisationen" tab
        #And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
        #And user selects by table entry "XTA Dealer IO"
        #Then user sees pagebody info "XTA Dealer IO"
        #And user can see Facility Type "External Dealer", Status "Aktiv" and "Organisationsstruktur anzeigen" under "XTA Dealer IO"
        
		
		
     #Manual tests -410,411 - commented out due to large amount of tests		
	 #@PPN2-410
     #Scenario: Global Admin, Show Users within an organisation
         #Given "xtaglobal" is on Ppnadmin home page
         #And user searches for "XTA" in "Nach Organisationen suchen"
         #And user selects by table entry "XTA Dealers"     
         #Then user sees info "XTA Dealers Operativ Ja EMPTY Porsche Händler Exernal Dealer Contract Germany"
         #And user navigates to "Benutzer" second row tab          
         #Then user sees "OrganisationBenutzer" search results for "XTA Dealers"
	     #And user sees pagebody info "Name Benutzername Organisation Email Account Status Gültigkeitsdauer des Benutzerkontos"             
         #And user presses circle button "zurück"
         #And user presses "Zum Organisationsbaum"  
         #And User navigates to "Market Global" by arrow
	     #And User navigates to "Dr. Ing. h.c. F. Porsche AG" by arrow 
	     #And User navigates to "XTA Department" by arrow
	     #And User navigates to "XTA Region" by arrow
	     #And User navigates to "XTA Subsidiary" by arrow
	     #And User navigates to "XTA Dealer Network" by arrow	      
	     #And user selects "XTA Dealers" by cell menu option "Details anzeigen" from tree view            
         #And user navigates to "Benutzer" second row tab
	     #Then user sees "OrganisationBenutzer" search results for "XTA Dealers"
	     #And user sees pagebody info "Name Benutzername Organisation Email Account Status Gültigkeitsdauer des Benutzerkontos"             
         #Then user logs out of PPN lite 
      
     #PPN2-411
     #Scenario: Global Admin, Display Organisation
         #Given "xtaglobal" is on Ppnadmin home page 
         #And user searches for "XTA Dealers" in "Nach Organisationen suchen"
         #Then user sees "Organisation" search results for "XTA Dealers"
         #And user selects by table entry "XTA Dealers"
         #Then user sees pagebody info "XTA Dealers Basisinformation"
         #Then user sees info "XTA Dealers Operativ Ja EMPTY Porsche Händler Exernal Dealer Contract Germany"
         #And user presses circle button "zurück"
         #Then user sees "Organisation" search results for "XTA Dealers"
         #And user selects "XTA Dealers" by cell menu option "Details anzeigen"
         #Then user sees pagebody info "XTA Dealers Basisinformation"
         #Then user sees info "XTA Dealers Operativ Ja EMPTY Porsche Händler Exernal Dealer Contract Germany"
         #And user presses circle button "zurück"
         #And user presses "Zum Organisationsbaum"              
         #Then only "Market Global" organisation is displayed
         #And User navigates to "Market Global" by arrow
	     #And User navigates to "Dr. Ing. h.c. F. Porsche AG" by arrow 
	     #And User navigates to "XTA Department" by arrow
	     #And User navigates to "XTA Region" by arrow
	     #And User navigates to "XTA Subsidiary" by arrow
	     #And User navigates to "XTA Dealer Network" by arrow   
	     #And user sees pagebody info "XTA Dealers"
         #When user navigates to "Benutzer" tab          
         #Then user searches user "xtacoordinator" 
         #And user selects "XTA Dealers" by cell menu option "Organisationsdetails anzeigen"
         #Then user sees pagebody info "XTA Dealers Basisinformation"         
         #Then user logs out of PPN lite	           
	      		 