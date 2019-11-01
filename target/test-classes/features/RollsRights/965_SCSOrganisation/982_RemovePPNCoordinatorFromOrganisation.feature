@PPN2-965
Feature: Rollen & Rechte SCS Organisation Remove Koordinator

  @PPN2-982-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    And selects "PPN Koordinatoren verwalten" from Aktionen
    Then user sees headerone info "Coordinators of XTA Dealers"
    Then user sees headerfour info "Organizationgroup"
    And selects "Mitglied entfernen" from Aktionen
    Then user sees headerone info "Mitglied entfernen"   
    Then user logs out of PPN lite
  
  #B -can't see Mitglied entfernen
  @PPN2-982-2  
  Scenario: (XTA Manager)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    And selects "PPN Koordinatoren verwalten" from Aktionen
    Then user sees headerone info "Coordinators of XTA Dealers"
    Then user sees headerfour info "Organizationgroup"
    And selects "Mitglied entfernen" from Aktionen
    Then user sees headerone info "Mitglied entfernen"   
    Then user logs out of PPN lite

  @PPN2-982-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user doesn't see aktionen option "PPN Koordinatoren verwalten"
    Then user logs out of PPN lite

  #B - unbekanter fehler
  @PPN2-982-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    And selects "PPN Koordinatoren verwalten" from Aktionen
    Then user sees headerone info "Coordinators of XTA Department Sub"
    Then user sees headerfour info "Organizationgroup"
    And selects "Mitglied entfernen" from Aktionen
    Then user sees headerone info "Mitglied entfernen"   
    Then user logs out of PPN lite

  @PPN2-982-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
    And user selects "XTA Dealer Sub" by cell menu option "Details anzeigen"
    Then user doesn't see aktionen option "PPN Manager verwalten"
    Then user logs out of PPN lite

  @PPN2-982-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user doesn't see aktionen option "PPN Manager verwalten"
    Then user logs out of PPN lite

  #@PPN2-982-7
  #Scenario: (XTA User)
    #Given "xtauser" is on Ppnadmin home page
    #When user navigates to "Organisationen" tab
    #And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    #And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    #Then user doesn't see aktionen option "PPN Manager verwalten"
    #Then user logs out of PPN lite

  @PPN2-982-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects "XTA Dealer IO" by cell menu option "Details anzeigen"
    Then user doesn't see aktionen option "PPN Manager verwalten"
    Then user logs out of PPN lite