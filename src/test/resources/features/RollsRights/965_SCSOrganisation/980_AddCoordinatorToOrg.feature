@PPN2-965
Feature: Rollen & Rechte SCS Organisation Add Coordinator to Org

  @PPN2-980-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    And selects "PPN Koordinatoren verwalten" from Aktionen
    Then user sees headerone info "Coordinators of XTA Dealers"
    Then user sees headerfour info "Organizationgroup"
    And selects "Mitglieder hinzufügen" from Aktionen
    Then user sees headerone info "Benutzer hinzufügen"
    Then user sees headerfour info "Coordinators of XTA Dealers"
    Then user logs out of PPN lite

  @PPN2-980-2  
  Scenario: (XTA Manager)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    And selects "PPN Koordinatoren verwalten" from Aktionen
    Then user sees headerone info "Coordinators of XTA Dealers"
    Then user sees headerfour info "Organizationgroup"
    And selects "Mitglieder hinzufügen" from Aktionen
    Then user sees headerone info "Benutzer hinzufügen"
    Then user sees headerfour info "Coordinators of XTA Dealers"
    Then user logs out of PPN lite

  @PPN2-980-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user doesn't see aktionen option "PPN Koordinatoren verwalten"
    Then user logs out of PPN lite

  @PPN2-980-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    And selects "PPN Koordinatoren verwalten" from Aktionen
    Then user sees headerone info "Coordinators of XTA Dealers"
    Then user sees headerfour info "Organizationgroup"
    And selects "Mitglieder hinzufügen" from Aktionen
    Then user sees headerone info "Benutzer hinzufügen"
    Then user sees headerfour info "Coordinators of XTA Dealers"
    Then user logs out of PPN lite

  @PPN2-980-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user doesn't see aktionen option "PPN Koordinatoren verwalten"
    Then user logs out of PPN lite

  @PPN2-980-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user doesn't see aktionen option "PPN Koordinatoren verwalten"
    Then user logs out of PPN lite
