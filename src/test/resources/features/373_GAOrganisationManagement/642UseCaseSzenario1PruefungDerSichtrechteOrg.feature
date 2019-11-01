@PPN2-373
Feature: Global Admin: Organisation Management 
    
    @PPN2-642
    Scenario: Use Case Szenario 1 Pruefung der Sichtrechte Org   
          Given "xtauser" is on Ppnadmin home page
          When user navigates to "Organisationen" tab
          Then user sees organisations "XTA_Subsidiary XTA_Dealer_Network XTA_Dealers XTA_Dealer_Sub"
          Then user doesn't see organisations "XTA_Department XTA_Region XTA_Department_Sub XTA_Region_IO XTA_Importer_IO XTA_Dealer_IO"
          Then user logs out of PPN lite