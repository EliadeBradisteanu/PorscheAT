@PPN2-965
Feature: Rollen & Rechte SCS Organisation Show Device Certificates within an organisation

  @PPN2-485-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Gerätezertifikate" second row tab
    And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
    Then user logs out of PPN lite

  @PPN2-485-2
  Scenario: (XTA Manager)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Gerätezertifikate" second row tab
    And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
    Then user logs out of PPN lite

  @PPN2-485-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Gerätezertifikate" second row tab
    And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
    Then user logs out of PPN lite

  @PPN2-485-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Department Sub"
    And user navigates to "Gerätezertifikate" second row tab
    And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
    Then user logs out of PPN lite

  @PPN2-485-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user navigates to "Gerätezertifikate" second row tab
    And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
    Then user logs out of PPN lite

  @PPN2-485-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
    And user selects "XTA Dealer Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer Sub"
    And user navigates to "Gerätezertifikate" second row tab
    And user sees pagebody info "Anzeigename Technischer Name Status Ablaufdatum Besitzer"
    Then user logs out of PPN lite

  #@PPN2-485-7
  #Scenario: (XTA User)
    #Given "xtauser" is on Ppnadmin home page
    #When user navigates to "Organisationen" tab
    #And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    #And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    #Then user sees headertwo info "XTA Dealers"
    #And user doesn't see info "Gerätezertifikate"
    #Then user logs out of PPN lite

  @PPN2-485-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects "XTA Dealer IO" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealers"
    And user doesn't see info "Gerätezertifikate"
    Then user logs out of PPN lite