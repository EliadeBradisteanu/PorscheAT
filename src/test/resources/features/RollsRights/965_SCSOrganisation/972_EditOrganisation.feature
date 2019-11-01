@PPN2-965
Feature: Rollen & Rechte SCS Organisation Delete Organisation

 @PPN2-972-1
	 Scenario: Edit Organisation (XTA Global)
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation bearbeiten" from Aktionen
	    Then user sees headertwo info "Organisation bearbeiten"
	    And user presses "Submit"
        Then "Die Organisation" is "wurde erfolgreich geändert"
        
     @PPN2-972-2
	 Scenario: Edit Organisation (XTA Manager)
	    Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation bearbeiten" from Aktionen
	    Then user sees headertwo info "Organisation bearbeiten"
	    And user presses "Submit"
        Then "Die Organisation" is "wurde erfolgreich geändert"   
		
	 #B - can't edit facility type and kreditkarte fehler
	 @PPN2-972-3
	 Scenario: Edit Organisation (XTA Coordinator)
	    Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation bearbeiten" from Aktionen
	    Then user sees headertwo info "Organisation bearbeiten"
	    And user presses "Submit"
        Then "Die Organisation" is "wurde erfolgreich geändert"
        
        
     @PPN2-972-4
	 Scenario: Edit Organisation (XTA Manager IO)
	    Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation bearbeiten" from Aktionen
	    Then user sees headertwo info "Organisation bearbeiten"
	    And user presses "Submit"
        Then "Die Organisation" is "wurde erfolgreich geändert" 
        
     @PPN2-972-5
	 Scenario: Edit Organisation (XTA Group Manager)
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
		Then user sees headertwo info "XTA Dealers"
		Then user doesn't see aktionen option "Organisation bearbeiten" 
		
     @PPN2-972-6
	 Scenario: Edit Organisation (XTA Group Coordinator)
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
		Then user sees headertwo info "XTA Dealers"
		Then user doesn't see aktionen option "Organisation bearbeiten"  		
	
	 @PPN2-972-7
	 Scenario: Edit Organisation (XTA User)
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
		Then user sees headertwo info "XTA Dealers"
		Then user doesn't see aktionen option "Organisation bearbeiten"
		
	 #B - user sees info 	
     @PPN2-972-8
	 Scenario: Edit Organisation (XTA User IO)
	    Given "xtauserio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealer IO"
		Then user sees headertwo info "XTA Dealer IO"
		Then user doesn't see aktionen option "Organisation bearbeiten"
 	