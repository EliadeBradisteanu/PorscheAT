@PPN2-965
Feature: SCS Rollen & Rechte Organisation
   
    @PPN2-966-1
	Scenario: Create Hub 	    
	    Given "xtaglobal" is on Ppnadmin home page	    
	    When user navigates to "Organisationen" tab
		And user searches for "Dr. Ing. h.c. F. Porsche AG" in "Nach Organisationen suchen" 
		And user selects "Dr. Ing. h.c. F. Porsche AG" by cell menu option "Neuen Hub erstellen"
	    Then user sees headertwo info "Neuen Hub erstellen"
       
     @PPN2-966-2
	 Scenario: Create Hub  
        Given "xtamanager" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
        And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
        Then for "XTA Subsidiary" user doesn't see cell menu option "Neuen Hub erstellen"
 	
 	 @PPN2-966-3
	 Scenario: Create Hub     
	    Given "xtacoordinator" is on Ppnadmin home page
        When user navigates to "Organisationen" tab
        And user searches for "XTA Dealer" in "Nach Organisationen suchen"
        Then for "XTA Dealer" user doesn't see cell menu option "Neuen Hub erstellen"
	 
	 @PPN2-966-4
	 Scenario: Create Hub 
	    Given "xtamanagerio" is on Ppnadmin home page 
	    When user navigates to "Organisationen" tab       
        And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
        Then for "XTA Department Sub" user doesn't see cell menu option "Neuen Hub erstellen"
	  
	 @PPN2-966-5
	 Scenario: Create Hub 
	    Given "xtagroupmanager" is on Ppnadmin home page 
	    When user navigates to "Organisationen" tab 	    
        And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
        Then for "XTA Dealer Sub" user doesn't see cell menu option "Neuen Hub erstellen"
	
	  @PPN2-966-6
	  Scenario: Create Hub  
	    Given "xtagroupcoordinator" is on Ppnadmin home page 
	    When user navigates to "Organisationen" tab 	    
        And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
        Then for "XTA Dealer Sub" user doesn't see cell menu option "Neuen Hub erstellen"
		    
	  @PPN2-966-7
	  Scenario: Create Hub 
         Given "xtauser" is on Ppnadmin home page 
	     When user navigates to "Organisationen" tab 	    
         And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
         Then for "XTA Dealer Sub" user doesn't see cell menu option "Neuen Hub erstellen"
	
	  @PPN2-966-8
	  Scenario: Create Hub 
         Given "xtauserio" is on Ppnadmin home page 
	     When user navigates to "Organisationen" tab 	    
         And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
         Then for "XTA Dealer IO" user doesn't see cell menu option "Neuen Hub erstellen"
	
	    
	    
	    #Given user relogs as "xtauserio"
        #And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
        #Then for "XTA Dealer IO" user doesn't see cell menu option "Neuen Hub erstellen"
	    #Then user logs out of PPN lite
	 
	#not part of the test - creates 2 hub, second so xtauserio can see the hub   
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
	Scenario: Delete Hub
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
        And selects "Hub löschen" from Aktionen
        Then user sees pagebody info "Hub löschen bestätigen"    
	    Then user presses "Abbrechen"
	    
	@PPN2-967-2
	Scenario: Delete Hub  
	    Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"
	
	@PPN2-967-3
	Scenario: Delete Hub  
	    Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"
	
	@PPN2-967-4
	Scenario: Delete Hub  
	    Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"
	    
	@PPN2-967-5
	Scenario: Delete Hub  
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"  
	    
    @PPN2-967-6
	Scenario: Delete Hub  
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen" 
	    
    @PPN2-967-7
	Scenario: Delete Hub  
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen"	
	    
    @PPN2-967-8
	Scenario: Delete Hubb  
	    Given "xtauserio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test OrgIOI" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Neuen Hub erstellen" 	        	      

    
    @PPN2-968-1
	Scenario: Hub visibility     
        Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 
	    And user selects by table entry "Market Global"
        Then user sees headertwo info "Market Global"
    
    #B- xtamanager sees Market Global     
    @PPN2-968-2
	Scenario: Hub visibility     
        Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 
	    And user selects by table entry "Market Global"
        Then user sees headertwo info "Market Global"    
        
    
    @PPN2-968-3
	Scenario: Hub visibility     
        Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"
    
    @PPN2-968-4
	Scenario: Hub visibility     
        Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"
   
    @PPN2-968-5
	Scenario: Hub visibility     
        Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"
    
    @PPN2-968-6
	Scenario: Hub visibility     
        Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"  
	    
	@PPN2-968-7
	Scenario: Hub visibility     
        Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"   
	    
	@PPN2-968-8
	Scenario: Hub visibility     
        Given "xtauserio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Market Global" in "Nach Organisationen suchen" 	  
	    Then user sees "Organisation" search results for "Market Global"  
	    
	
	@PPN2-969-1
	Scenario: Edit Hub    
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"
        
    @PPN2-969-2
	Scenario: Edit Hub    
	    Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"    
	    
	@PPN2-969-3
	Scenario: Edit Hub    
	    Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"  
        
    @PPN2-969-4
	Scenario: Edit Hub    
	    Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    And selects "Hub bearbeiten" from Aktionen
	    Then user sees headertwo info "Hub bearbeiten"
	    And user presses "Submit"
        Then "Der Hub" is "wurde erfolgreich geändert"
        
    @PPN2-969-5
	Scenario: Edit Hub    
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Hub bearbeiten"  
	    
	@PPN2-969-6
	Scenario: Edit Hub    
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Hub bearbeiten" 
	    
	@PPN2-969-7
	Scenario: Edit Hub    
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "Remove Test Org" in "Nach Organisationen suchen" 
	    And user selects by table entry "Remove Test Org"
	    Then user doesn't see aktionen option "Hub bearbeiten" 
	
	#B- user can see Hub bearbeiten    
	#@PPN2-969-8
	#Scenario: Edit Hub    
	    #Given "xtauserio" is on Ppnadmin home page
	    #When user navigates to "Organisationen" tab
	    #And user searches for "Remove Test OrgIOI" in "Nach Organisationen suchen" 
	    #And user selects by table entry "Remove Test Org"
	    #Then user doesn't see aktionen option "Hub bearbeiten"                   
	
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

	
	@PPN2-970-1
	Scenario: Create Organisation                 
         Given "xtaglobal" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "Dr. Ing. h.c. F. Porsche AG" in "Nach Organisationen suchen"
	     And user selects "Dr. Ing. h.c. F. Porsche AG" by cell menu option "Neue Organisation erstellen"
	     And user selects from dropdown "Business Type wählen" "Porsche AG"
	     And user presses "Weiter"
	     Then user sees headertwo info "Neue Organisation erstellen"
	     
	@PPN2-970-2
	Scenario: Create Organisation                 
         Given "xtamanager" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	     And user selects "XTA Subsidiary" by cell menu option "Neue Organisation erstellen"
	     And user selects from dropdown "Business Type wählen" "Porsche Importeur"
	     And user presses "Weiter"
	     Then user sees headertwo info "Neue Organisation erstellen"  
	     
	@PPN2-970-3
	Scenario: Create Organisation                 
         Given "xtacoordinator" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer" in "Nach Organisationen suchen"
	     Then for "XTA Dealer" user doesn't see cell menu option "Neue Organisation erstellen"
	     
	@PPN2-970-4
	Scenario: Create Organisation                 
         Given "xtamanagerio" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	     And user selects "XTA Department Sub" by cell menu option "Neue Organisation erstellen"
	     And user selects from dropdown "Business Type wählen" "Porsche Importeur"
	     And user presses "Weiter"
	     Then user sees headertwo info "Neue Organisation erstellen"     
    
    @PPN2-970-5
	Scenario: Create Organisation                 
         Given "xtagroupmanager" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
	     Then for "XTA Dealer Sub" user doesn't see cell menu option "Neue Organisation erstellen"
	  
	@PPN2-970-6
	Scenario: Create Organisation                 
         Given "xtagroupcoordinator" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
	     Then for "XTA Dealer Sub" user doesn't see cell menu option "Neue Organisation erstellen"
	  
	@PPN2-970-7
	Scenario: Create Organisation                 
         Given "xtauser" is on Ppnadmin home page	    
	     When user navigates to "Organisationen" tab
	     And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
	     Then for "XTA Dealer Sub" user doesn't see cell menu option "Neue Organisation erstellen"
	
	#B- user can see option
	#@PPN2-970-8
	#Scenario: Create Organisation                 
         #Given "xtauserio" is on Ppnadmin home page	    
	     #When user navigates to "Organisationen" tab
	     #And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
	     #Then for "XTA Dealer IO" user doesn't see cell menu option "Neue Organisation erstellen"
	     
	 @PPN2-971-1
	 Scenario: Delete Organisation    
	    Given "xtaglobal" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation löschen" from Aktionen 
	    And user presses "Abbrechen"
	    
	 @PPN2-971-2
	 Scenario: Delete Organisation    
	    Given "xtamanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Department Sub"
		Then user sees headertwo info "XTA Department Sub"
		And selects "Organisation löschen" from Aktionen 
	    And user presses "Abbrechen"   
		
	@PPN2-971-3
	 Scenario: Delete Organisation    
	    Given "xtacoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
	    Then user doesn't see aktionen option "Organisation löschen"
	    
	 @PPN2-971-4
	 Scenario: Delete Organisation    
	    Given "xtamanagerio" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
		Then user sees headertwo info "XTA Subsidiary"
		And selects "Organisation löschen" from Aktionen 
	    And user presses "Abbrechen"  
	    
	 @PPN2-971-5
	 Scenario: Delete Organisation    
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
	    Then user doesn't see aktionen option "Organisation löschen"       
	    
	 @PPN2-971-6
	 Scenario: Delete Organisation    
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
	    Then user doesn't see aktionen option "Organisation löschen" 
	    
	 @PPN2-971-7
	 Scenario: Delete Organisation    
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Subsidiary" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Subsidiary"
	    Then user doesn't see aktionen option "Organisation löschen"  
	   
	 #B - user sees option   
	 #@PPN2-971-8
	 #Scenario: Delete Organisation    
	    #Given "xtauserio" is on Ppnadmin home page
	    #When user navigates to "Organisationen" tab
	    #And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
	    #And user selects by table entry "XTA Dealer IO"
	    #Then user doesn't see aktionen option "Organisation löschen"     
	
	 @PPN2-972-1
	 Scenario: Edit Organisation    
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
	 Scenario: Edit Organisation    
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
	 #@PPN2-972-3
	 #Scenario: Edit Organisation    
	    #Given "xtacoordinator" is on Ppnadmin home page
	    #When user navigates to "Organisationen" tab
	    #And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
	    #And user selects by table entry "XTA Department Sub"
		#Then user sees headertwo info "XTA Department Sub"
		#And selects "Organisation bearbeiten" from Aktionen
	    #Then user sees headertwo info "Organisation bearbeiten"
	    #And user presses "Submit"
        #Then "Die Organisation" is "wurde erfolgreich geändert"
        
        
     @PPN2-972-4
	 Scenario: Edit Organisation    
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
	 Scenario: Edit Organisation    
	    Given "xtagroupmanager" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
		Then user sees headertwo info "XTA Dealers"
		Then user doesn't see aktionen option "Organisation bearbeiten" 
		
     @PPN2-972-6
	 Scenario: Edit Organisation    
	    Given "xtagroupcoordinator" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
		Then user sees headertwo info "XTA Dealers"
		Then user doesn't see aktionen option "Organisation bearbeiten"  		
	
	 @PPN2-972-7
	 Scenario: Edit Organisation    
	    Given "xtauser" is on Ppnadmin home page
	    When user navigates to "Organisationen" tab
	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
	    And user selects by table entry "XTA Dealers"
		Then user sees headertwo info "XTA Dealers"
		Then user doesn't see aktionen option "Organisation bearbeiten"
		
	 #B - user sees info 	
     #@PPN2-972-8
	 #Scenario: Edit Organisation    
	    #Given "xtauserio" is on Ppnadmin home page
	    #When user navigates to "Organisationen" tab
	    #And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
	    #And user selects by table entry "XTA Dealer IO"
		#Then user sees headertwo info "XTA Dealer IO"
		#Then user doesn't see aktionen option "Organisation bearbeiten"			    	
	  