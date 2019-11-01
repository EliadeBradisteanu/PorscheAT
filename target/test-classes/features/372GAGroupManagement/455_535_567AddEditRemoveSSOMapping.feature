@PPN2-372
Feature: Global Admin -Group Management

   @PPN2-455
   Scenario: Global Admin: Add SSO Mapping
       Given "xtaglobal" is on Ppnadmin home page
       When user navigates to "Gruppen" tab
       And user populates field "Gruppen durchsuchen" with "XTA Application"
       And user selects by table entry "XTA Application"    
       And selects "Mitglieder hinzufügen" from Aktionen
       And user populates field "Mitglieder durchsuchen" with "xtauser"
       Then button "Auswahl hinzufügen (0)" is disabled
       And user selects checkbox from search "XTA User"
       And user presses "Auswahl hinzufügen (1)"
       Then "Benutzer wurde erfolgreich zu" is "hinzugefügt"
       And user presses circle button "Back"
       And user navigates to "Mitglieder" second row tab
       And user populates field "Mitglieder durchsuchen" with "xtauser"   
       And user selects "xtauser" by cell menu option "SSO-Mapping Anlegen"
       Then user sees headerthree info "SSO Mapping hinzufügen"
       And user presses "Speichern"
	   Then user sees error message "Es gibt 1 Feld welches Ihre Aufmerksamkeit benötigt"
	   Then field "Name der Application" is disabled
       And user populates field "SSO-Benutzername" with "ssoxtauser"
       And user populates field "SSO-Passwort" with "Hallo123"
       And user presses "Speichern"
	   Then "SSO-Mapping von" is "erfolgreich angelegt."
	   And user sees pagebody info "XTA User, User xtauser ssoxtauser"
       Then user logs out of PPN lite
       
    @PPN2-535
    Scenario: Global Admin: Edit SSO Mapping
      Given "xtaglobal" is on Ppnadmin home page
      When user navigates to "Gruppen" tab
      And user populates field "Gruppen durchsuchen" with "XTA Application"
      And user selects by table entry "XTA Application"
      And user navigates to "Mitglieder" second row tab
      And user populates field "Mitglieder durchsuchen" with "xtauser"
      And user selects "xtauser" by cell menu option "SSO-Mapping bearbeiten"
      Then user sees headerthree info "SSO Mapping bearbeiten"
      Then field "Name der Application" is disabled
      And user populates field "SSO-Benutzername" with "ssoxtauser"
      And user populates field "SSO-Passwort" with "Hallo123!"
      And user presses "Speichern"
      Then "SSO-Mapping" is "erfolgreich geändert"
      And user sees pagebody info "XTA User, User xtauser ssoxtauser"
      Then user logs out of PPN lite  
  
    @PPN2-567
    Scenario: Global Admin: Remove SSO Mapping
      Given "xtaglobal" is on Ppnadmin home page
      When user navigates to "Gruppen" tab
      And user populates field "Gruppen durchsuchen" with "XTA Application"
      And user selects by table entry "XTA Application" 
      And user navigates to "Mitglieder" second row tab
      And user populates field "Mitglieder durchsuchen" with "xtauser"
      And user selects "xtauser" by cell menu option "SSO-Mapping entfernen"
      And user sees pagebody info "SSO-Mapping entfernen"
      And user presses "Bestätigen" 
      Then user logs out of PPN lite      
      
    @PPN2-5677
    Scenario: remove user
      Given "xtaglobal" is on Ppnadmin home page  
      When user navigates to "Gruppen" tab
      And user populates field "Gruppen durchsuchen" with "XTA Application"
      And user selects by table entry "XTA Application"
      And selects "Mitglied entfernen" from Aktionen
	  And user populates field "Mitglieder durchsuchen" with "xtauser"
	  And user selects checkbox from search "xtauser"
      And user presses "Auswahl entfernen (1)"
	  Then "Benutzer" is "wurde erfolgreich entfernt von" 
      Then user logs out of PPN lite    