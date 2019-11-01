@PPN2-965
Feature: Rollen & Rechte SCS Organisation Check Organisations tree 

  @PPN2-986-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Im Organisationsbaum anzeigen" from Aktionen 
    Then user sees headerone info "Organisationen"
    Then user logs out of PPN lite

 @PPN2-986-2
  Scenario: (XTA Global)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Im Organisationsbaum anzeigen" from Aktionen 
    Then user sees headerone info "Organisationen"
    Then user logs out of PPN lite

  @PPN2-986-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Im Organisationsbaum anzeigen" from Aktionen 
    Then user sees headerone info "Organisationen"
    Then user logs out of PPN lite
    
  @PPN2-986-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Department Sub"
	Then user sees headertwo info "XTA Department Sub"
    And selects "Im Organisationsbaum anzeigen" from Aktionen 
    Then user sees headerone info "Organisationen"
    Then user logs out of PPN lite

  @PPN2-986-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Im Organisationsbaum anzeigen" from Aktionen 
    Then user sees headerone info "Organisationen"
    Then user logs out of PPN lite

  @PPN2-986-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealers"
	Then user sees headertwo info "XTA Dealers"
    And selects "Im Organisationsbaum anzeigen" from Aktionen 
    Then user sees headerone info "Organisationen"
    Then user logs out of PPN lite

  #@PPN2-986-7
  #Scenario: (XTA User)
    #Given "xtauser" is on Ppnadmin home page
    #When user navigates to "Organisationen" tab
    #And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    #And user selects by table entry "XTA Dealers"
	#Then user sees headertwo info "XTA Dealers"
    #And selects "Im Organisationsbaum anzeigen" from Aktionen 
    #Then user sees headerone info "Organisationen"
    #Then user logs out of PPN lite

  @PPN2-986-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects by table entry "XTA Dealer IO"
	Then user sees headertwo info "XTA Dealer IO"
    And selects "Im Organisationsbaum anzeigen" from Aktionen 
    Then user sees headerone info "Organisationen"
    Then user logs out of PPN lite

