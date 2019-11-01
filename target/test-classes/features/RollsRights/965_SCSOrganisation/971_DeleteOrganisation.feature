@PPN2-965
Feature: Rollen & Rechte SCS Organisation Delete Organisation

 	     
	 @PPN2-971-1
	 Scenario: (XTA Global)
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation löschen" from Aktionen 
	    And user presses "Abbrechen"
	    
	 @PPN2-971-2
	 Scenario: (XTA Manager)
	    Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation löschen" from Aktionen 
	    And user presses "Abbrechen"   
		
	@PPN2-971-3
	 Scenario: (XTA Coordinator)
	    Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
	    Then user doesn't see aktionen option "Organisation löschen"
	    
	 @PPN2-971-4
	 Scenario: (XTA Manager IO)
	    Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
		Then user sees headertwo info "XTA Subsidiary"
		And selects "Organisation löschen" from Aktionen 
	    And user presses "Abbrechen"  
	    
	 @PPN2-971-5
	 Scenario: (XTA Group Manager)
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
	    Then user doesn't see aktionen option "Organisation löschen"       
	    
	 @PPN2-971-6
	 Scenario: (XTA Group Coordinator)
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
	    Then user doesn't see aktionen option "Organisation löschen" 
	    
	 @PPN2-971-7
	 Scenario: (XTA User)
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
	    Then user doesn't see aktionen option "Organisation löschen"  
	   
	 #B - user sees option   
	 @PPN2-971-8
	 Scenario: (XTA User IO)
	    Given "xtauserio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealer IO"
	    Then user doesn't see aktionen option "Organisation löschen"
 