package steps;

import net.thucydides.core.annotations.Step;
import pages.HomePage;

public class CommonSteps {

	private static final long serialVersionUID = 3772440258314488551L;

	private HomePage homePage;

//	public CommonSteps(Pages pages) {
//		super(pages);
//		homePage = getPages().get(HomePage.class);
//	}
	
	@Step("Opens ppnadmin home page and logs in as {0}")
	public void opens_ppnadmin_home_page(String userName) {
		homePage.login(userName);
	}

	@Step("Navigates to tab {0}")
	public void navigates_to_tab(String tab) {
		homePage.navigateToTab(tab);
	}
	
	@Step("User navigates to {0} second row tab")
	public void userNavigatesToSecondRowTab(String tabName) {
		homePage.userNavigatesToSecondRowTab(tabName);
	}
	
	@Step("User presses {0} button")
	public void user_presses(String buttonText) {
		homePage.userPresses(buttonText);
	}

	@Step("User presses {0} button")
	public void user_presses_circle_button(String buttonText) {
		homePage.userPressesCircleButton(buttonText);
	}
	
	@Step("User clicks field {0}")
	public void user_clicks_field(String fieldText) {
		homePage.userClicksField(fieldText);		
	}
	
	@Step("User clicks link {0}")
	public void user_clicks_link(String linkText) {
	    homePage.userClicksLink(linkText);		
	}
	
	@Step("Button {0} is disabled")
	public void button_is_disabled(String buttonText) {
		homePage.buttonIsDisabled(buttonText);
	}

	@Step("Checkbox for {0} is disabled")
	public void checkbox_for_is_disabled(String tableEntry) {
		homePage.checkboxForIsDisabled(tableEntry);
	}
	
	@Step("Checkbox {0} is disabled")
	public void checkbox_is_disabled(String checkboxText) {
		homePage.checkboxIsDisabled(checkboxText);		
	}
	
	@Step("Dropdown {0} is disabled")
	public void dropdown_is_disabled(String dropdownText) {		
		homePage.dropdownIsDisabled(dropdownText);
	}
	
	@Step("Field {0} is disabled")
	public void field_is_disabled(String fieldText) {		
		homePage.fieldIsDisabled(fieldText);
	}
	
	@Step("user sees headerone info {0}")
	public void user_sees_headerone_info(String text) {
		homePage.userSeesHeaderoneInfo(text);		
	}
	
	@Step("user sees headertwo info {0}")
	public void user_sees_headertwo_info(String text) {
	     homePage.userSeesHeadertwoInfo(text);			
	}
	
	@Step("user sees headerthree info {0}")
	public void user_sees_headerthree_info(String text) {		
		homePage.userSeesHeaderthreeInfo(text);
	}

	@Step("user sees headerfour info {0}")
	public void user_sees_headerfour_info(String text) {
		homePage.userSeesHeaderfourInfo(text);		
	}
	
	@Step("user sees headerfive info {0}")
	public void user_sees_headerfive_info(String text) {
		homePage.userSeesHeaderfiveInfo(text);		
	}
		
	@Step("User sees pagebody info: {0}")
	public void user_sees_pagebody_info(String text) {
		homePage.userSeesPageBodyInfo(text);		
	}

	@Step("User sees info: {0}")
	public void user_sees_info(String text) {
		homePage.userSeesInfo(text);
	}
	
	@Step("User doesn't see info: {0}")
	public void user_doesnt_see_info(String info) {
		homePage.userDoesnTSeeInfo(info);
	}
	
	@Step("User sees error message: {0}")
	public void user_sees_error_message(String errorMessage) {
		homePage.userSeesErrorMessage(errorMessage);	
	}
	
	@Step("User sees search results for: {0}")
	public void user_sees_search_results_for(String searchType, String searchText) {
		homePage.userSeesSearchResultsFor(searchType, searchText);		
	}
	
	@Step("{0} is {1}")
	public void verify_toast(String lifecycle, String status) {
		homePage.verifyToast(lifecycle, status);
	}
	
	@Step("Select option {0} from Aktionen ")
	public void select_aktionen_option(String option) {
		homePage.selectAktionenOption(option);
	}
	
	@Step("User selects from dropdown {0} {1}")
	public void user_selects_from_dropdown(String dropdownName, String option) {
		homePage.userSelectsFromDropdown(dropdownName, option);
	}

	@Step("User selects date {0} from {1}" )
	public void user_selects_datepicker_from(String date, String fielddName) {
		homePage.userSelectsDatepickerFrom(date, fielddName);
	}
	
	@Step("user ticks checkbox {0}")
	public void user_ticks_checkbox(String name) {
		homePage.userTicksCheckbox(name);
	}
	
	@Step("User populates field {0} with {1}")
	public void user_populates_field_with(String fieldName, String text) {
		// TimeUtil.sleep(500, TimeUnit.MILLISECONDS);
		homePage.userPopulatesFieldWith(fieldName, text);
	}	

	@Step("user selects by table entry {0}")
	public void user_selects_by_table_entry(String selectName) {
		homePage.userSelectsByTableEntry(selectName);
	}
	
	@Step("user selects by subtable entry {0}")
	public void user_selects_by_subtable_entry(String selectName) {		
		 homePage.userSelectsBySubtableEntry(selectName);
	}  

	@Step("user selects {0} by cell menu option {1}")
	public void user_selects_by_cell_menu_option(String tableEntry, String option) {
		homePage.userSelectsByCellMenuOption(tableEntry, option);
	}
	
	@Step("user selects checkox for search {0}")
	public void user_selects_checkbox_from_search(String tableEntry) {
		homePage.userSelectsCheckboxFromSearch(tableEntry);
	}
	
	@Step("user searches for {0} in {1}")
	public void user_searches_for_in(String searchText, String placeholderText) {
		homePage.userSearchesForIn(searchText, placeholderText);		
	}
	
	@Step("user searches user {0}")
	public void user_searches_user(String userName) {
		homePage.userSearchesUser(userName);		
	}
	
	@Step("user logs out of PPN lite")
	public void user_logsout_of_PpnLite() {
		homePage.userLogsOutOfPPNLite();
	}

	@Step("click on user {0} and select option {1}")
	public void click_on_user_and_select_option(String userName, String option) {
		homePage.clickOnUserAndSelectOption(userName, option);		
	}

	@Step("User checks downloaded certificate")
	public void user_checks_downloaded_certificate() {
		homePage.userChecksDownloadedCertificate();
		
	}

	@Step("user uploads certificate")
	public void user_uploads_certificate() {
		homePage.userUploadsCertificate();		
	}
	
	@Step("user relogs as {0}")
	public void user_relogs_as(String name) {
		homePage.userRelogsAs(name);
	}

	@Step("user sees organisations {0}")
	public void user_sees_organisations(String oraganisations) {
		homePage.userSeesOrganisations(oraganisations);
		
	}

	@Step("user doesn't sees organisations {0}")
	public void user_doesn_t_see_organisations(String oraganisations) {
		 homePage.userDoesntSeeOrganisations(oraganisations);
	}

	@Step("for {0} user doesn't see cell menu option {1}")
	public void for_user_doesn_t_see_cell_menu_option(String tableEntry, String cellMenuOption) {
		homePage.forUserDoesntSeeCellMenuOption(tableEntry, cellMenuOption);		
	}

	@Step("user doesn't see cell menu option {0}")
	public void user_doesn_t_see_aktionen_option(String aktionenOption) {
		homePage.userDoesntSeeAktionenOption(aktionenOption);		
	}

	@Step("user sees sub tabs {0}")
	public void user_sees_sub_tabs(String expectedTabs) {
		homePage.userSeesSubTabs(expectedTabs);
	}

    @Step("table is empty")
    public void tableIsEmpty() {
        homePage.tableElements(true);
    }

    @Step("table is not empty")
    public void tableIsNotEmpty() {
        homePage.tableElements(false);
    }	

}