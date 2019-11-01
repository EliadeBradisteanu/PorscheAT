@PPN2-965
Feature: Rollen & Rechte SCS Organisation Create Hub 

  @PPN2-966-1
	Scenario: (XTA Global)
	    Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user searches for "Dr. Ing. h.c. F. Porsche AG" in "Nach Organisationen suchen" 
		And user selects "Dr. Ing. h.c. F. Porsche AG" by cell menu option "Neuen Hub erstellen"
	    Then user sees headertwo info "Neuen Hub erstellen"
       
     @PPN2-966-2
	 Scenario: (XTA Manager)
        Given "xtamanager" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
        And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
        Then for "XTA Subsidiary" user doesn't see cell menu option "Neuen Hub erstellen"
 	
 	 @PPN2-966-3
	 Scenario: (XTA Coordinator)
	    Given "xtacoordinator" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
        And user searches for "XTA Dealer" in "Nach Organisationen suchen"
        Then for "XTA Dealer" user doesn't see cell menu option "Neuen Hub erstellen"
	 
	 @PPN2-966-4
	 Scenario: (XTA Manager IO)
	    Given "xtamanagerio" is on Ppnadmin home page 
	    When user navigates to "Organisationen" tab       
        And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
        Then for "XTA Department Sub" user doesn't see cell menu option "Neuen Hub erstellen"
	  
	 @PPN2-966-5
	 Scenario: (XTA Group Manager)
	    Given "xtagroupmanager" is on Ppnadmin home page 
	    When user navigates to "Organisationen" tab 	    
        And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
        Then for "XTA Dealer Sub" user doesn't see cell menu option "Neuen Hub erstellen"
	
	  @PPN2-966-6
	  Scenario: (XTA Group Coordinator)
	    Given "xtagroupcoordinator" is on Ppnadmin home page 
	    When user navigates to "Organisationen" tab 	    
        And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
        Then for "XTA Dealer Sub" user doesn't see cell menu option "Neuen Hub erstellen"
		    
	  @PPN2-966-7
	  Scenario: (XTA User)
         Given "xtauser" is on Ppnadmin home page 
	     When user navigates to "Organisationen" tab 	    
         And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
         Then for "XTA Dealer Sub" user doesn't see cell menu option "Neuen Hub erstellen"
	
	  @PPN2-966-8
	  Scenario: (XTA User IO)
         Given "xtauserio" is on Ppnadmin home page 
	     When user navigates to "Organisationen" tab 	    
         And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
         Then for "XTA Dealer IO" user doesn't see cell menu option "Neuen Hub erstellen"
 
 