@PPN2-373
Feature: Global Admin: Organisation Management 
    
    @PPN2-644-1
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org       
          Given "xtamanager" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"
          Then user logs out of PPN lite 
    
    @PPN2-644-2
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org       
          Given "xtamanagerio" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Subsidiary XTA_Dealer_Network XTA_Department_Sub XTA_Importer_IO  XTA_Dealer_IO"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Region_IO XTA_Dealers XTA_Dealer_Sub"
          Then user logs out of PPN lite
    
    @PPN2-644-3
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org       
          Given "xtacoordinator" is on Ppnadmin home page
          When user navigates to "Organisationen" tab  
          Then user sees organisations "XTA_Subsidiary XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO XTA_Department_Sub"
          Then user logs out of PPN lite 
    
    @PPN2-644-4
    Scenario: Use Case Szenario 2 Pruefung der Sichtrechte Org   
          Given "xtauserio" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Importer_IO XTA_Dealer_IO"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Subsidiary XTA_Region_IO XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub XTA_Department_Sub"
          Then user logs out of PPN lite
          
          #Given user relogs as "xtacoordinator"
           #Then user logs out of PPN lite
          #Given user relogs as "xtauserio"
          #Then user logs out of PPN lite