@PPN2-965
Feature: Rollen & Rechte SCS Organisation View Organisation Tab

#de verificat si continutul

  ###########################
	 # View Org Tab (PPN2-975) #
	 ###########################
	 	 @PPN2-975-1
     	 Scenario: View Organisation Tab (XTA Global)
     	    Given "xtaglobal" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

         @PPN2-975-2
     	 Scenario: View Organisation Tab (XTA Manager)
     	    Given "xtamanager" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

         @PPN2-975-3
     	 Scenario: View Organisation Tab (XTA Coordinator)
     	    Given "xtacoordinator" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

         @PPN2-975-4
     	 Scenario: View Organisation Tab (XTA Manager IO)
     	    Given "xtamanagerio" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

         @PPN2-975-5
     	 Scenario: View Organisation Tab (XTA Group Manager)
     	    Given "xtagroupmanager" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

         @PPN2-975-6
     	 Scenario: View Organisation Tab (XTA Group Coordinator)
     	    Given "xtagroupcoordinator" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

         @PPN2-975-7
     	 Scenario: View Organisation Tab (XTA User)
     	    Given "xtauser" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

         @PPN2-975-8
     	 Scenario: View Organisation Tab (XTA User IO)
     	    Given "xtauserio" is on Ppnadmin home page
     	    When user navigates to "Organisationen" tab
     	    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
     	    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
     		Then user sees headertwo info "XTA Dealers"
     		And user sees sub tabs "Allgemein Benutzer Gerätezertifikate Kontakte"
     		Then user logs out of PPN lite

 