@PPN2-965
Feature: Rollen & Rechte SCS Organisation View Org Contant List

  @PPN2-978-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Kontakte" second row tab
    And user sees pagebody info "Manager Koordinatoren"
    Then user logs out of PPN lite

  @PPN2-978-2
  Scenario: (XTA Manager)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Kontakte" second row tab
    And user sees pagebody info "Manager Koordinatoren"
    Then user logs out of PPN lite

  @PPN2-978-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Kontakte" second row tab
    And user sees pagebody info "Manager Koordinatoren"
    Then user logs out of PPN lite

  @PPN2-978-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Department Sub"
    And user navigates to "Kontakte" second row tab
    And user sees pagebody info "Manager Koordinatoren"
    Then user logs out of PPN lite

  @PPN2-978-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
    And user selects "XTA Dealer Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer Sub"
    And user navigates to "Kontakte" second row tab
    And user sees pagebody info "Manager Koordinatoren"
    Then user logs out of PPN lite

  @PPN2-978-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer" in "Nach Organisationen suchen"
    And user selects "XTA Dealer" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer"
    And user navigates to "Kontakte" second row tab
    And user sees pagebody info "Manager Koordinatoren"
    Then user logs out of PPN lite

  #@PPN2-978-7
  #Scenario: (XTA User)
    #Given "xtauser" is on Ppnadmin home page
    #When user navigates to "Organisationen" tab
    #And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    #And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    #Then user sees headertwo info "XTA Dealers"
    #And user navigates to "Kontakte" second row tab
    #And user sees pagebody info "Manager Koordinatoren"
    #Then user logs out of PPN lite

  @PPN2-978-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects "XTA Dealer IO" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer IO"
    And user navigates to "Kontakte" second row tab
    And user sees pagebody info "Manager Koordinatoren"
    Then user logs out of PPN lite

          
          
