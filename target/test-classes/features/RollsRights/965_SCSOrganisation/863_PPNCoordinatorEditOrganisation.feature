@PPN2-965
Feature: Rollen & Rechte SCS Organisation 

      @PPN2-863
	  Scenario: PPN Coordinator: Edit Organisation
	      Given "xtacoordinator" is on Ppnadmin home page
	      When user navigates to "Organisationen" tab
	      And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	      And user selects "XTA Dealers" by cell menu option "Details anzeigen"
	      Then user sees headertwo info "XTA Dealers" 
          Then user sees info "XTA Dealers Operativ Ja Porsche Händler Porsche Center Germany"
          And user presses circle button "Zurück" 	   
	      And user selects by table entry "XTA Dealers"
	      Then user sees headertwo info "XTA Dealers"
	      Then user sees info "XTA Dealers Operativ Ja Porsche Händler Porsche Center Germany"
          And selects "Organisation bearbeiten" from Aktionen
          Then user sees headertwo info "Organisation bearbeiten"	
          Then field "Anzeigename*" is disabled
          Then field "Firmenname" is disabled
          Then dropdown "Business Type*" is disabled
          Then checkbox "Legale Einheit*" is disabled
          Then dropdown "Organisationsstatus*" is disabled
          Then dropdown "Facility Type" is disabled
          Then field "Straße" is disabled
          Then user clicks field "Straße (Lokalisiert)"
          Then field "Straße (Lokalisiert)" is disabled
          Then field "Postleitzahl" is disabled
          Then field "Stadt" is disabled 
          Then user clicks field "Stadt (Lokalisiert)"
          Then field "Stadt (Lokalisiert)" is disabled
          Then field "Staat" is disabled
          Then user clicks field "Staat (Lokalisiert)"
          Then field "Staat (Lokalisiert)" is disabled
          Then dropdown "Land*" is disabled
          Then field "Longitude" is disabled
          Then field "Latitude" is disabled
          Then field "Postanschrift Ergänzung" is disabled
          Then checkbox "Überprüfung aktiviert" is disabled
          Then field "Überprüfungsintervall (in Tagen)" is disabled
          Then field "Datum der nächsten Prüfung" is disabled
          Then field "Porsche Partner-Nr." is disabled
          Then field "VW Partnerkey" is disabled 
          Then field "KVPS Besteller-ID" is disabled 
          Then field "SAP Kennung" is disabled
          Then field "DUNS Kennung" is disabled
          Then field "Handelsregister-Nr." is disabled
          Then field "Umsatzsteuer-Identifikationsnr." is disabled
          Then field "Umsatzsteuer-Identifikationsnr. 2" is disabled
          Then field "Amtsgericht" is disabled
          Then field "Bank" is disabled
          Then user clicks field "Bank (Lokalisiert)"
          Then field "Bank (Lokalisiert)" is disabled
          Then field "Kontoinhaber" is disabled
          Then user clicks field "Kontoinhaber (Lokalisiert)"
          Then field "Kontoinhaber (Lokalisiert)" is disabled
          Then field "Kontonummer" is disabled 
          Then field "Kontonummer 2" is disabled
          Then field "Bankleitzahl" is disabled
          Then field "IBAN" is disabled 
          Then field "Swift Code (BIC)" is disabled
          Then dropdown "Kreditkarte" is disabled 
          #Then dropwdown "Händler Typ" is disabled 
          #Then field "Vertretene Marken" is disabled 
          #Then checkbox "Temporäre Gebäude*" is disabled
          #Then field "CI-Wert(%)" is disabled
          #Then field "Showroomfläche(m2)" is disabled 
          #Then field "Werkstattfläche(m2)" is disabled
          #Then field "Lagefläche(m2)" is disabled
          #Then field "Grundstücksfläche(m2)" is disabled 
          #Then field "Anzahl Showroomfahrzeuge" is disabled 
          #Then field "Anzahl Gebrauchtfahrzeuge" is disabled
          Then dropdown "Sterneklassifizierung (für Spezialwerkzeuge)" is disabled 
          And user presses "Submit"
	      Then "Die Organisation" is "wurde erfolgreich geändert"
	      Then user logs out of PPN lite
          
          
          
