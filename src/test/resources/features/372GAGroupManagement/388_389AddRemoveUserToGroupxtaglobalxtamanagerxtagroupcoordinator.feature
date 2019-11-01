@PPN2-372
Feature: Global Admin -Group Management

    @PPN2-388-1
	Scenario: Add User to group: xtaglobal, xtamanager,xtagroupcoordinator
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
        And user populates field "Gruppen durchsuchen" with "XTA Permissiongroup"
        And user selects by table entry "XTA Permissiongroup"
        Then user sees headerthree info "XTA Permissiongroup"
        Then user sees info "XTA Permissiongroup xta_permissiongroup Vertragspartner, Porsche Händler, Externer, Porsche Importeur, Porsche AG, Porsche Tochtergesellschaft xtamanager"
        And selects "Mitglieder hinzufügen" from Aktionen
        And user populates field "Mitglieder durchsuchen" with "xtauser"
        Then button "Auswahl hinzufügen (0)" is disabled
        And user selects checkbox from search "XTA User"
        And user presses "Auswahl hinzufügen (1)"
        Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
        Then checkbox for "XTA User" is disabled
        And user presses circle button "Back"
        And user navigates to "Mitglieder" second row tab
        And user sees pagebody info "XTA User, User xtauser"
        And user navigates to "Gruppen" tab
        And user populates field "Gruppen durchsuchen" with "XTA Jobrole"
        And user selects by table entry "XTA Jobrole"
        Then user sees headerthree info "XTA Jobrole"
        Then user sees info "XTA Jobrole xta_jobrole Vertragspartner, Porsche Händler, Externer, Porsche Importeur, Porsche AG, Porsche Tochtergesellschaft xtamanager"
        And selects "Mitglieder hinzufügen" from Aktionen
        And user populates field "Mitglieder durchsuchen" with "xtauser"
        Then button "Auswahl hinzufügen (0)" is disabled
        And user selects checkbox from search "XTA User"
        And user presses "Auswahl hinzufügen (1)"
        Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
        Then checkbox for "XTA User" is disabled
        And user presses circle button "Back"
        And user navigates to "Mitglieder" second row tab
        And user sees pagebody info "XTA User, User xtauser"
        Then user logs out of PPN lite
     
    @PPN2-389-1
	Scenario: Remove User from Group: xtaglobal, xtagroupmanager, xtagroupcoordiantor
	    Given "xtaglobal" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Permissiongroup"
        And user selects by table entry "XTA Permissiongroup"
        And selects "Mitglied entfernen" from Aktionen
        Then user sees headerthree info "Mitglied entfernen"
		And user populates field "Mitglieder durchsuchen" with "xtauser"
		Then button "Auswahl entfernen (0)" is disabled
		And user selects checkbox from search "xtauser"
    	And user presses "Auswahl entfernen (1)"
		Then "Benutzer" is "wurde erfolgreich entfernt von"
		When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Jobrole"
        And user selects by table entry "XTA Jobrole"
        And selects "Mitglied entfernen" from Aktionen
        Then user sees headerthree info "Mitglied entfernen"
		And user populates field "Mitglieder durchsuchen" with "xtauser"
		Then button "Auswahl entfernen (0)" is disabled
		And user selects checkbox from search "xtauser"
    	And user presses "Auswahl entfernen (1)"
		Then "Benutzer" is "wurde erfolgreich entfernt von"
		Then user logs out of PPN lite
		
    @PPN2-388-2
	Scenario: Add User to group: xtaglobal, xtamanager,xtagroupcoordinator
	    Given "xtagroupcoordinator" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
        And user populates field "Gruppen durchsuchen" with "XTA Application"
        And user selects by table entry "XTA Application"
        Then user sees headerthree info "XTA Application"
        Then user sees info "XTA Application xta_application Vertragspartner, Porsche Händler, Externer, Porsche Importeur, Porsche AG, Porsche Tochtergesellschaft xtagroupmanager"
        And selects "Mitglieder hinzufügen" from Aktionen
        And user populates field "Mitglieder durchsuchen" with "xtauser"
        Then button "Auswahl hinzufügen (0)" is disabled
        And user selects checkbox from search "XTA User"
        And user presses "Auswahl hinzufügen (1)"
        Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
        Then checkbox for "XTA User" is disabled
        And user presses circle button "Back"
        And user navigates to "Mitglieder" second row tab
        And user sees pagebody info "XTA User, User xtauser"
        And user navigates to "Gruppen" tab
        And user populates field "Gruppen durchsuchen" with "XTA Jobrole"
        And user selects by table entry "XTA Jobrole"
        Then user sees headerthree info "XTA Jobrole"
        Then user sees info "XTA Jobrole xta_jobrole Vertragspartner, Porsche Händler, Externer, Porsche Importeur, Porsche AG, Porsche Tochtergesellschaft xtamanager"
        And selects "Mitglieder hinzufügen" from Aktionen
        And user populates field "Mitglieder durchsuchen" with "xtauser"
        Then button "Auswahl hinzufügen (0)" is disabled
        And user selects checkbox from search "XTA User"
        And user presses "Auswahl hinzufügen (1)"
        Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
        Then checkbox for "XTA User" is disabled
        And user presses circle button "Back"
        And user navigates to "Mitglieder" second row tab
        And user sees pagebody info "XTA User, User xtauser"
        Then user logs out of PPN lite
     
    @PPN2-389-2
	Scenario: Remove User from Group: xtaglobal, xtagroupmanager, xtagroupcoordiantor
	    Given "xtagroupcoordinator" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Permissiongroup"
        And user selects by table entry "XTA Permissiongroup"
        And selects "Mitglied entfernen" from Aktionen
        Then user sees headerthree info "Mitglied entfernen"
		And user populates field "Mitglieder durchsuchen" with "xtauser"
		Then button "Auswahl entfernen (0)" is disabled
		And user selects checkbox from search "xtauser"
    	And user presses "Auswahl entfernen (1)"
		Then "Benutzer" is "wurde erfolgreich entfernt von"
		When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Jobrole"
        And user selects by table entry "XTA Jobrole"
        And selects "Mitglied entfernen" from Aktionen
        Then user sees headerthree info "Mitglied entfernen"
		And user populates field "Mitglieder durchsuchen" with "xtauser"
		Then button "Auswahl entfernen (0)" is disabled
		And user selects checkbox from search "xtauser"
    	And user presses "Auswahl entfernen (1)"
		Then "Benutzer" is "wurde erfolgreich entfernt von"
		Then user logs out of PPN lite		
	
	@PPN2-388-3
	Scenario: Add User to group: xtaglobal, xtamanager,xtagroupcoordinator
	    Given "xtagroupmanager" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
        And user populates field "Gruppen durchsuchen" with "XTA Application"
        And user selects by table entry "XTA Application"
        Then user sees headerthree info "XTA Application"
        Then user sees info "XTA Application xta_application Vertragspartner, Porsche Händler, Externer, Porsche Importeur, Porsche AG, Porsche Tochtergesellschaft xtagroupmanager"
        And selects "Mitglieder hinzufügen" from Aktionen
        And user populates field "Mitglieder durchsuchen" with "xtauser"
        Then button "Auswahl hinzufügen (0)" is disabled
        And user selects checkbox from search "XTA User"
        And user presses "Auswahl hinzufügen (1)"
        Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
        Then checkbox for "XTA User" is disabled
        And user presses circle button "Back"
        And user navigates to "Mitglieder" second row tab
        And user sees pagebody info "XTA User, User xtauser"       
        Then user logs out of PPN lite
     
    @PPN2-389-3
	Scenario: Remove User from Group: xtaglobal, xtagroupmanager, xtagroupcoordiantor
	    Given "xtagroupmanager" is on Ppnadmin home page
        When user navigates to "Gruppen" tab
		And user populates field "Gruppen durchsuchen" with "XTA Application"
        And user selects by table entry "XTA Application"
        And selects "Mitglied entfernen" from Aktionen
        Then user sees headerthree info "Mitglied entfernen"
		And user populates field "Mitglieder durchsuchen" with "xtauser"
		Then button "Auswahl entfernen (0)" is disabled
		And user selects checkbox from search "xtauser"
    	And user presses "Auswahl entfernen (1)"
		Then "Benutzer" is "wurde erfolgreich entfernt von"		
		Then user logs out of PPN lite
	
