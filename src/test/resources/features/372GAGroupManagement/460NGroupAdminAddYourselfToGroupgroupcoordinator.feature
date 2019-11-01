@PPN2-372
Feature: Global Admin -Group Management
   
   @PPN2-460
   Scenario: N* Group Admin: add yourself to group - group coordinator
       #B- Cannot use aktionen
       #Given "xtagroupcoordinator" is on Ppnadmin home page
       Given "xtaglobal" is on Ppnadmin home page
       When user navigates to "Gruppen" tab
       And user populates field "Gruppen durchsuchen" with "XTA Application"
       And user selects by table entry "XTA Application"
       And selects "Benutzer hinzufügen" from Aktionen
       And user populates field "Benutzer durchsuchen" with "xtaglobal"
       #Then checkbox for "xtaglobal" is disabled
	   Then user logs out of PPN lite 
	   
  