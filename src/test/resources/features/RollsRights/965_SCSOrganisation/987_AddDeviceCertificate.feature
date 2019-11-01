@PPN2-965
Feature: Rollen & Rechte SCS Organisation Add Device Certificate

  @PPN2-987-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Neues Gerätezertifikat erstellen" from Aktionen 
    Then user sees headertwo info "Neues Gerätezertifikat erstellen"
    Then user logs out of PPN lite

  #B - user can't see option
  @PPN2-987-2
  Scenario: (XTA Global)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Neues Gerätezertifikat erstellen" from Aktionen 
    Then user sees headertwo info "Neues Gerätezertifikat erstellen"
    Then user logs out of PPN lite
  
  #B - user can't see option
  @PPN2-987-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Neues Gerätezertifikat erstellen" from Aktionen 
    Then user sees headertwo info "Neues Gerätezertifikat erstellen"
    Then user logs out of PPN lite
  
  #B - user can't see option  
  @PPN2-987-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Department Sub"
	Then user sees headertwo info "XTA Department Sub"
    And selects "Neues Gerätezertifikat erstellen" from Aktionen 
    Then user sees headertwo info "Neues Gerätezertifikat erstellen"
    Then user logs out of PPN lite

  @PPN2-987-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    Then user doesn't see aktionen option "Neues Gerätezertifikat erstellen"
    Then user logs out of PPN lite

  @PPN2-987-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    Then user doesn't see aktionen option "Neues Gerätezertifikat erstellen"
    Then user logs out of PPN lite

  #@PPN2-986-7
  #Scenario: (XTA User)
    #Given "xtauser" is on Ppnadmin home page
    #When user navigates to "Organisationen" tab
    #And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    #And user selects by table entry "XTA Dealers"
	#Then user sees headertwo info "XTA Dealers"
    #Then user doesn't see aktionen option "Neues Gerätezertifikat erstellen"
    #Then user logs out of PPN lite

  @PPN2-987-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealer IO"
	Then user sees headertwo info "XTA Dealer IO"
    Then user doesn't see aktionen option "Neues Gerätezertifikat erstellen"
    Then user logs out of PPN lite

