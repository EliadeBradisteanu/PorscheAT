@PPN2-965
Feature: Rollen & Rechte SCS Organisation Add User

  @PPN2-984-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Neuen Benutzer erstellen" from Aktionen
    Then user sees headertwo info "Neuen Benutzer erstellen"   
    Then user logs out of PPN lite

 @PPN2-984-2
  Scenario: (XTA Global)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Neuen Benutzer erstellen" from Aktionen
    Then user sees headertwo info "Neuen Benutzer erstellen"   
    Then user logs out of PPN lite

  @PPN2-984-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Neuen Benutzer erstellen" from Aktionen
    Then user sees headertwo info "Neuen Benutzer erstellen"   
    Then user logs out of PPN lite

  @PPN2-984-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Department Sub"
	Then user sees headertwo info "XTA Department Sub"
    And selects "Neuen Benutzer erstellen" from Aktionen
    Then user sees headertwo info "Neuen Benutzer erstellen"   
    Then user logs out of PPN lite

  @PPN2-984-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"   
    Then user doesn't see aktionen option "Neuen Benutzer erstellen"
    Then user logs out of PPN lite

  @PPN2-984-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"   
    Then user doesn't see aktionen option "Neuen Benutzer erstellen"
    Then user logs out of PPN lite

  #@PPN2-984-7
  #Scenario: (XTA User)
    #Given "xtauser" is on Ppnadmin home page
    #When user navigates to "Organisationen" tab
    #And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    #And user selects by table entry "XTA Dealers"
	#Then user sees headertwo info "XTA Dealers"   
    #Then user doesn't see aktionen option "Neuen Benutzer erstellen"
    #Then user logs out of PPN lite

  #B- user sees aktionen option 
  @PPN2-984-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealer IO"
	Then user sees headertwo info "XTA Dealer IO"   
    Then user doesn't see aktionen option "Neuen Benutzer erstellen"
    Then user logs out of PPN lite
