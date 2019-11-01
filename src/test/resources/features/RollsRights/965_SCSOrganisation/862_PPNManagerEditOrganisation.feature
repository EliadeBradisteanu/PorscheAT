@PPN2-965
Feature: Rollen & Rechte SCS Organisation 

      @PPN2-862
	  Scenario: PPN Manager Edit Organisation
	      Given "xtamanager" is on Ppnadmin home page
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
          Then dropdown "Business Type*" is disabled
          Then checkbox "Legale Einheit*" is disabled
          Then field "Datum der nächsten Prüfung" is disabled
          Then field "VW Partnerkey" is disabled 
          And user presses "Submit"
	      Then "Die Organisation" is "wurde erfolgreich geändert"
	      Then user logs out of PPN lite
          
