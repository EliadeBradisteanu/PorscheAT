@PPN2-965
Feature: Rollen & Rechte SCS Organisation Delete, Visibility, Edit Hub 

 #not part of the test - creates 2 hub, second so (XTA User IO) can see the hub   
	@PPN2-100
	Scenario: Create Hub 	   
	    Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user searches for "XTA Dealer Network" in "Nach Organisationen suchen" 
	    And user selects "XTA Dealer Network" by cell menu option "Neuen Hub erstellen"
	    And user populates field "Anzeigename*" with "Remove Test Org"
	    And user selects from dropdown "Business Type*" "Porsche AG"
        And user presses "Submit" 
        Then "Der Hub" is " wurde erfolgreich erstellt"
        When user navigates to "Organisationen" tab
		And user searches for "XTA Importer IO" in "Nach Organisationen suchen" 
	    And user selects "XTA Importer IO" by cell menu option "Neuen Hub erstellen"
	    And user populates field "Anzeigename*" with "Remove Test OrgIOI"
	    And user selects from dropdown "Business Type*" "Porsche AG"
        And user presses "Submit" 
        Then "Der Hub" is " wurde erfolgreich erstellt"
    
    @PPN2-967-1
	Scenario: Delete Hub (XTA Global)
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
        And selects "Hub löschen" from Aktionen
        Then user sees pagebody info "Hub löschen bestätigen"    
	    Then user presses "Abbrechen"
	    
	@PPN2-967-2
	Scenario: Delete Hub (XTA Manager)
	    Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"
	
	@PPN2-967-3
	Scenario: Delete Hub (XTA Coordinator)
	    Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"
	
	@PPN2-967-4
	Scenario: Delete Hub (XTA Manager IO)
	    Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"
	    
	@PPN2-967-5
	Scenario: Delete Hub (XTA Group Manager)
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"  
	    
    @PPN2-967-6
	Scenario: Delete Hub (XTA Group Coordinator)
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen" 
	    
    @PPN2-967-7
	Scenario: Delete Hub (XTA User)
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"	
	    
    @PPN2-967-8
	Scenario: Delete Hub (XTA User IO)
	    Given "xtauserio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test OrgIOI" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen" 	        	      

    
    @PPN2-968-1
	Scenario: Hub visibility (XTA Global)
        Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 
	    And user selects by table entry "Market Global"
        Then user sees headertwo info "Market Global"
    
    #B- (XTA Manager) sees Market Global     
    @PPN2-968-2
	Scenario: Hub visibility (XTA Manager)
        Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 
	    And user selects by table entry "Market Global"
        Then user sees headertwo info "Market Global"    
        
    
    @PPN2-968-3
	Scenario: Hub visibility (XTA Coordinator)
        Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"
    
    @PPN2-968-4
	Scenario: Hub visibility (XTA Manager IO)
        Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"
   
    @PPN2-968-5
	Scenario: Hub visibility (XTA Group Manager)
        Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"
    
    @PPN2-968-6
	Scenario: Hub visibility (XTA Group Coordinator)
        Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"  
	    
	@PPN2-968-7
	Scenario: Hub visibility (XTA User)
        Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"   
	    
	@PPN2-968-8
	Scenario: Hub visibility (XTA User IO)
        Given "xtauserio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"  
	    
	
	@PPN2-969-1
	Scenario: Edit Hub (XTA Global)
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"
        
    @PPN2-969-2
	Scenario: Edit Hub (XTA Manager)
	    Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"    
	    
	@PPN2-969-3
	Scenario: Edit Hub (XTA Coordinator)
	    Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"  
        
    @PPN2-969-4
	Scenario: Edit Hub (XTA Manager IO)
	    Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"
        
    @PPN2-969-5
	Scenario: Edit Hub (XTA Group Manager)
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Hub bearbeiten"  
	    
	@PPN2-969-6
	Scenario: Edit Hub (XTA Group Coordinator)
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Hub bearbeiten" 
	    
	@PPN2-969-7
	Scenario: Edit Hub (XTA User)
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Hub bearbeiten" 
	
	#B- user can see Hub bearbeiten    
	@PPN2-969-8
	Scenario: Edit Hub (XTA User IO)
	    Given "xtauserio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test OrgIOI" in "Nach Organisationen suchen"
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Hub bearbeiten"
	
	 #delete previously created hubs
	 @PPN2-101
	 Scenario: Global Admin, Delete Hub 
        Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user searches for "Remove Test Org" in "Nach Organisationen suchen"
		And user selects "Remove Test Org" by cell menu option "Hub löschen"
		And user presses "Löschen"
        Then "The Hub" is "was successfully deleted"
		And user selects "Remove Test OrgIOI" by cell menu option "Hub löschen"
		And user presses "Löschen"
        Then "The Hub" is "was successfully deleted" 