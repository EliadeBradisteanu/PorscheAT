@PPN2-373
Feature: Global Admin: Organisation Management 
    
   @PPN2-645-1
   Scenario: Use Case Szcenario 4: Pruefung der Sichtrechte Orgs       
          Given "xtaglobal" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          And user searches for "XTA" in "Nach Organisationen suchen"
          Then user sees organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"
  
   @PPN2-645-2
   Scenario: Use Case Szcenario 4: Pruefung der Sichtrechte Orgs       
          Given "xtagroupmanager" is on Ppnadmin home page
          When user navigates to "Organisationen" tab      
          And user searches for "XTA" in "Nach Organisationen suchen"
          Then user sees organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"
 
          
          #Given user relogs as "xtacoordinator"
           #Then user logs out of PPN lite
          #Given user relogs as "xtauserio"
          #Then user logs out of PPN lite