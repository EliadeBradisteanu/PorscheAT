@PPN2-965
Feature: Rollen & Rechte SCS Organisation Create Organisation
 
 @PPN2-970-1
	Scenario: (XTA Global)
         Given "xtaglobal" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "Dr. Ing. h.c. F. Porsche AG" in "Nach Organisationen suchen"
	     And user selects "Dr. Ing. h.c. F. Porsche AG" by cell menu option "Neue Organisation erstellen"
	     And user selects from dropdown "Business Type wählen" "Porsche AG"
	     And user presses "Weiter"
	     Then user sees headertwo info "Neue Organisation erstellen"
	     
	@PPN2-970-2
	Scenario: (XTA Manager)
         Given "xtamanager" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	     And user selects "XTA Subsidiary" by cell menu option "Neue Organisation erstellen"
	     And user selects from dropdown "Business Type wählen" "Porsche Importeur"
	     And user presses "Weiter"
	     Then user sees headertwo info "Neue Organisation erstellen"  
	     
	@PPN2-970-3
	Scenario: (XTA Coordinator)
         Given "xtacoordinator" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer" in "Nach Organisationen suchen"
	     Then for "XTA Dealer" user doesn't see cell menu option "Neue Organisation erstellen"
	     
	@PPN2-970-4
	Scenario: (XTA Manager IO)
         Given "xtamanagerio" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	     And user selects "XTA Department Sub" by cell menu option "Neue Organisation erstellen"
	     And user selects from dropdown "Business Type wählen" "Porsche Importeur"
	     And user presses "Weiter"
	     Then user sees headertwo info "Neue Organisation erstellen"     
    
    @PPN2-970-5
	Scenario: (XTA Group Manager)
         Given "xtagroupmanager" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
	     Then for "XTA Dealer Sub" user doesn't see cell menu option "Neue Organisation erstellen"
	  
	@PPN2-970-6
	Scenario: (XTA Group Coordinator)
         Given "xtagroupcoordinator" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
	     Then for "XTA Dealer Sub" user doesn't see cell menu option "Neue Organisation erstellen"
	  
	@PPN2-970-7
	Scenario: (XTA User)
         Given "xtauser" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
	     Then for "XTA Dealer Sub" user doesn't see cell menu option "Neue Organisation erstellen"
	
	#B- user can see option
	@PPN2-970-8
	Scenario: (XTA User IO)
         Given "xtauserio" is on Ppnadmin home page
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
	     Then for "XTA Dealer IO" user doesn't see cell menu option "Neue Organisation erstellen"