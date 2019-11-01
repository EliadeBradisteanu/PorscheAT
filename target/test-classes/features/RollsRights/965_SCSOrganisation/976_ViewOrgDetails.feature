@PPN2-965
Feature: Rollen & Rechte SCS Organisation View Org Details

  @PPN2-976-1
  Scenario: (XTA Global)
    Given "xtaglobal" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Department Sub"
    And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    Then user logs out of PPN lite

  @PPN2-976-2
  Scenario: (XTA Manager)
    Given "xtamanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Department Sub"
    And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    Then user logs out of PPN lite

  @PPN2-976-3
  Scenario: (XTA Coordinator)
    Given "xtacoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealers" in "Nach Organisationen suchen"
    And user selects "XTA Dealers" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer"
    And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    Then user logs out of PPN lite

  @PPN2-976-4
  Scenario: (XTA Manager IO)
    Given "xtamanagerio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Department Sub"
    And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    Then user logs out of PPN lite

  @PPN2-976-5
  Scenario: (XTA Group Manager)
    Given "xtagroupmanager" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
    And user selects "XTA Dealer Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer Sub"
    And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    Then user logs out of PPN lite

  @PPN2-976-6
  Scenario: (XTA Group Coordinator)
    Given "xtagroupcoordinator" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer Sub" in "Nach Organisationen suchen"
    And user selects "XTA Dealer Sub" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer Sub"
    And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    Then user logs out of PPN lite

  #@PPN2-976-7
  #Scenario: (XTA User)
    #Given "xtauser" is on Ppnadmin home page
    #When user navigates to "Organisationen" tab
    #And user searches for "XTA Department Sub" in "Nach Organisationen suchen"
    #And user selects "XTA Department Sub" by cell menu option "Details anzeigen"
    #Then user sees headertwo info "XTA Department Sub"
    #And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    #Then user logs out of PPN lite

  @PPN2-976-8
  Scenario: (XTA User IO)
    Given "xtauserio" is on Ppnadmin home page
    When user navigates to "Organisationen" tab
    And user searches for "XTA Dealer IO" in "Nach Organisationen suchen"
    And user selects "XTA Dealer IO" by cell menu option "Details anzeigen"
    Then user sees headertwo info "XTA Dealer IO"
    And user sees pagebody info "Anzeigename Anzeigename (Lokalisiert) Firmenname Firmenname (Lokalisiert) Organisationsstatus Legale Einheit Business Type Facility Type Beginn der Porsche Aktivität Beginn der operativen Geschäftstätigkeit Beziehung zur übergeordneten Organisation Straße Straße (Lokalisiert) Postleitzahl Stadt Stadt (Lokalisiert) Staat Staat (Lokalisiert) Land Latitude Longitude E-Mail Adresse Telefon Fax Postanschrift Ergänzung Postanschrift Ergänzung (Lokalisiert) Homepage Öffnungszeiten E-Mail-Adresse Service Telefonnummer Service Öffnungszeiten Bank Bank (Lokalisiert) Kontoinhaber Kontoinhaber (Lokalisiert) Kontonummer Kontonummer 2 Bankleitzahl IBAN Swift Code (BIC) Kreditkarte Porsche Partner-Nr. VW Partnerkey KVPS Besteller-ID SAP Kennung DUNS Kennung Handelsregister-Nr. Umsatzsteuer-Identifikationsnr. Umsatzsteuer-Identifikationsnr. 2 Amtsgericht Überprüfung aktiviert Datum der nächsten Prüfung Überprüfungsintervall (in Tagen) Sterneklassifizierung (für Spezialwerkzeuge)"
    Then user logs out of PPN lite