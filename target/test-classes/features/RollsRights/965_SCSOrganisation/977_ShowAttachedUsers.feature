@PPN2-965
Feature: Rollen & Rechte SCS Organisation Show attached Users

  @PPN2-977-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Benutzer" second row tab
    And table is not empty
    Then user logs out of PPN lite

  @PPN2-977-2
  Scenario: (XTA Manager)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Benutzer" second row tab
    And table is not empty
    Then user logs out of PPN lite

  @PPN2-977-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Benutzer" second row tab
    And table is not empty
    Then user logs out of PPN lite

  @PPN2-977-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects "XTA Dealer IO" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Benutzer" second row tab
    And table is not empty
    Then user logs out of PPN lite

  @PPN2-977-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Benutzer" second row tab
    And table is not empty
    Then user logs out of PPN lite

  @PPN2-977-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Benutzer" second row tab
    And table is not empty
    Then user logs out of PPN lite

  @PPN2-977-7
  Scenario: (XTA User)
    Given "xtauser" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user doesn't see info "Benutzer"
    Then user logs out of PPN lite

  @PPN2-977-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects "XTA Dealer IO" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user doesn't see info "Benutzer"
    Then user logs out of PPN lite