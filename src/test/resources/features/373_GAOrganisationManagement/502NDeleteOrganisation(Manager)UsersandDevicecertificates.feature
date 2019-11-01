@PPN2-373
Feature: Global Admin: Organisation Management 
    
    
    @PPN2-502
    Scenario: N* Delete Organisation (Manager): Users and Device certificates
        Given "xtaglobal" is on Ppnadmin home page                
        And user searches for "Porsche China" in "Nach Organisationen suchen"
        And user selects by table entry "Porsche China"
        And selects "Organisation löschen" from Aktionen
        And user presses "Löschen"
        Then "Das Löschen der Organisation" is "ist nicht erlaubt, weil ihr weitere Organisationen oder Hubs zugeordnet sind"
        Then user logs out of PPN lite  	
        
        
	 