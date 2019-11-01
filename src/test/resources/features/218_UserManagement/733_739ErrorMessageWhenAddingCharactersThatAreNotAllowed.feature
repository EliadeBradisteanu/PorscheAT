@PPN2-218
Feature: User Management       
 		  
   @PPN2-733 # contains 739
   Scenario: Error Message when adding characters that are not allowed 	  
	    Given "xtamanager" is on Ppnadmin home page
        When user navigates to "Benutzer" tab
        And user searches for "xtauser" in "Nach Benutzern suchen"
        And user selects by table entry "xtauser"
        And selects "Benutzer bearbeiten" from Aktionen	
        And user populates field "Benutzername" with "xta'dealer"        
        Then user sees error message "There is 1 field that requires your attention"
        Then user logs out of PPN lite	

 	
 	
