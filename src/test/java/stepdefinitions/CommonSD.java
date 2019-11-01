package stepdefinitions;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;
import steps.CommonSteps;

public class CommonSD {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonSD.class);
	
	@Steps
	CommonSteps commonSteps;
	
	@Given("^\"([^\"]*)\" is on Ppnadmin home page$")
	public void is_on_Ppnadmin_home_page(String userName) {
		commonSteps.opens_ppnadmin_home_page(userName);
		logger.info(userName + "is on PPNAdmin home Page");
	}
	
	@When("^user navigates to \"([^\"]*)\" tab$")
	public void user_navigate_to_tab(String tab) {
		commonSteps.navigates_to_tab(tab);
		logger.info("User navigate to " + tab + " tab");
	}
	
	@When("^user navigates to \"([^\"]*)\" second row tab$")
	public void user_navigates_to_second_row_tab(String tabName) throws Throwable {
		commonSteps.userNavigatesToSecondRowTab(tabName);
		logger.info("User navigates to " + tabName + " second row tab");
	}

	// click on button by button text
	@And("^user presses \"([^\"]*)\"$")
	public void user_presses(String buttonText) {
		commonSteps.user_presses(buttonText);
		logger.info("User clicks " + buttonText + " button");
	}

	// click on circle button by button text
	@And("^user presses circle button \"([^\"]*)\"$")
	public void user_presses_circle_button(String buttonText) {
		commonSteps.user_presses_circle_button(buttonText);
		logger.info("User clicks " + buttonText + " button");
	}	
	
	//for plus sign
	@Then("^user clicks field \"([^\"]*)\"$")
	public void user_clicks_field(String fieldText) {
		commonSteps.user_clicks_field(fieldText);
		logger.info("User clicks field " + fieldText );
	}
	
	@Then("^user clicks link \"([^\"]*)\"$")
	public void user_clicks_link(String linkText) {
		commonSteps.user_clicks_link(linkText);
		logger.info("User clicks link " + linkText );
	}
	
	// check if button is disabled
	@Then("^button \"([^\"]*)\" is disabled$")
	public void button_is_disabled(String buttonText) {
		commonSteps.button_is_disabled(buttonText);
		logger.info("Button " + buttonText + " is disabled");
	}

	// check if checkbox for tableEntry is disabled
	@Then("^checkbox for \"([^\"]*)\" is disabled$")
	public void checkbox_for_is_disabled(String tableEntry) {
		commonSteps.checkbox_for_is_disabled(tableEntry);
		logger.info("Checkbox for " + tableEntry + " is disabled");
	}
	
	//gen info checkbox
	@Then("^checkbox \"([^\"]*)\" is disabled$")
	public void checkbox_is_disabled(String checkboxText) {
		commonSteps.checkbox_is_disabled(checkboxText);
		logger.info("Checkbox " + checkboxText + " is disabled");
	}

	// check if dropdown for tableEntry is disabled
	@Then("^dropdown \"([^\"]*)\" is disabled$")
	public void dropdown_is_disabled(String dropdownText) {
		commonSteps.dropdown_is_disabled(dropdownText);
		logger.info("Dropdown " + dropdownText + " is disabled");
	}

	// check if field for tableEntry is disabled
	@Then("^field \"([^\"]*)\" is disabled$")
	public void field_is_disabled(String fieldText) {
		commonSteps.field_is_disabled(fieldText);
		logger.info("Field " + fieldText + " is disabled");
	}
	
	@Then("^user sees headerone info \"([^\"]*)\"$")
	public void user_sees_headerone_info(String text) {
		commonSteps.user_sees_headerone_info(text);
		logger.info("user sees headerone info " + text);
	}
	
	@Then("^user sees headertwo info \"([^\"]*)\"$")
	public void user_sees_headertwo_info(String text) {
		commonSteps.user_sees_headertwo_info(text);
		logger.info("user sees headertwo info " + text);
	}
	
	@Then("^user sees headerthree info \"([^\"]*)\"$")
	public void user_sees_headerthree_info(String text) {
		commonSteps.user_sees_headerthree_info(text);
		logger.info("user sees headertwo info " + text);
	}
	
	@Then("^user sees headerfour info \"([^\"]*)\"$")
	public void user_sees_headerfour_info(String text) {
		commonSteps.user_sees_headerfour_info(text);
		logger.info("user sees headerfour info " + text);
	}
	
	@Then("^user sees headerfive info \"([^\"]*)\"$")
	public void user_sees_headerfive_info(String text) {
		commonSteps.user_sees_headerfive_info(text);
		logger.info("user sees headerfive info " + text); 
	}
	
	@Then("^user sees pagebody info \"([^\"]*)\"$")
	public void user_sees_pagebody_info(String text) {
		commonSteps.user_sees_pagebody_info(text);
		logger.info("User sees pagebody info " + text);
	}
	
	// asserts general info has text
	@Then("^user sees info \"([^\"]*)\"$")
	public void user_sees_info(String text) {
		commonSteps.user_sees_info(text);
		logger.info("User sees " + text);
	}
	
	@Then("^user doesn't see info \"([^\"]*)\"$")
	public void user_doesnt_see_info(String info) throws Throwable {
		commonSteps.user_doesnt_see_info(info);
		logger.info("User doesn't see info " + info);
	}
	
	@Then("^user sees error message \"([^\"]*)\"$")
	public void user_sees_error_message(String errorMessage) {
	    commonSteps.user_sees_error_message(errorMessage);
	    logger.info("User sees error message " + errorMessage);
	}
	
	// asserts nr of results for table are the same as displayed number
	@Then("^user sees \"([^\"]*)\" search results for \"([^\"]*)\"$")
	public void user_sees_search_results_for(String searchType, String searchText) {
		commonSteps.user_sees_search_results_for(searchType, searchText);
		logger.info("User sees search result for " + searchText);
	}
	
	//verify toast message appears and has correct text
	@Then("^\"([^\"]*)\" is \"([^\"]*)\"$")
	public void is(String lifecycle, String status) throws Throwable {
		commonSteps.verify_toast(lifecycle, status);
		logger.info(lifecycle + " is " + status);
	}
	
	//select option from Aktionen
	@And("^selects \"([^\"]*)\" from Aktionen$")
	public void selects_from_aktionen(String option) {
		commonSteps.select_aktionen_option(option);
		logger.info("User selects " + option + " from Aktionen");
	}
	
	@And("^user selects from dropdown \"([^\"]*)\" \"([^\"]*)\"$")
	public void user_selects_from_dropdown(String dropdownName, String option) {
		commonSteps.user_selects_from_dropdown(dropdownName, option);
		logger.info("User selects from dropdown " + dropdownName + " " + option );
	}	
	
	@Then("^User selects date \"([^\"]*)\" from \"([^\"]*)\"$")
	public void user_selects_datepicker_from(String date, String fielddName) {
		commonSteps.user_selects_datepicker_from(date, fielddName);
		logger.info("User selects date " + date + " from" + fielddName);
	}
	
	@And("^user ticks checkbox \"([^\"]*)\"$")
	public void user_ticks_checkbox(String name) throws Throwable {
		commonSteps.user_ticks_checkbox(name);
		logger.info("user ticks checkbox " + name);
	}

	@And("^user populates field \"([^\"]*)\" with \"([^\"]*)\"$")
	public void user_populates_field_with(String fieldName, String text) {
		commonSteps.user_populates_field_with(fieldName, text);
		logger.info("user populates field " + fieldName + " with " + text);
	}	

	@And("^user selects by table entry \"([^\"]*)\"$")
	public void user_selects_by_table_entry(String selectName) {
		commonSteps.user_selects_by_table_entry(selectName);
		logger.info("user selects by table entry " + selectName);
	}
	
	@When("^user selects by subtable entry \"([^\"]*)\"$")
	public void user_selects_by_subtable_entry(String selectName) {
		commonSteps.user_selects_by_subtable_entry(selectName);
		logger.info("user selects by subtable entry " + selectName);
	}

	@And("^user selects \"([^\"]*)\" by cell menu option \"([^\"]*)\"$")
	public void user_selects_by_cell_menu_option(String tableEntry, String option) {
		commonSteps.user_selects_by_cell_menu_option(tableEntry, option);
		logger.info("user selects " + tableEntry + " by cell nemu option");
	}
	
	@And("^user selects checkbox from search \"([^\"]*)\"$")
	public void user_selects_checkbox_from_search(String tableEntry) {
		commonSteps.user_selects_checkbox_from_search(tableEntry);
		logger.info("user selects checkox for " + tableEntry);
	}
	
	@And("^user searches for \"([^\"]*)\" in \"([^\"]*)\"$")
	public void user_searches_for_in(String searchText, String placeholderText) {
	    commonSteps.user_searches_for_in(searchText, placeholderText);
	    logger.info("user searches for " + searchText + " in " + placeholderText);
	}
	
	@Then("^user searches user \"([^\"]*)\"$")
	public void user_searches_user(String userName) {
	    commonSteps.user_searches_user(userName);
		logger.info("user searches user " + userName);
	}
	
	@Then("^user logs out of PPN lite$")
	public void user_logsout_of_PpnLite() throws Throwable {
		commonSteps.user_logsout_of_PpnLite();
		logger.info("user logs out of PPN lite");
	}	

	@Then("^user clicks on user \"([^\"]*)\" and select option \"([^\"]*)\"$")
	public void click_on_user_and_select_option(String userName, String option) {
	    commonSteps.click_on_user_and_select_option(userName, option);
	    logger.info("user clicks on user " + userName + " and select option " + option);
	}
	
	@Then("^user checks downloaded certificate$")
	public void user_checks_downloaded_certificate() {
		commonSteps.user_checks_downloaded_certificate();
		logger.info("User checks downloaded certificate");
	}
	
	@Then("^user uploads certificate$")
	public void user_uploads_certificate() {
		commonSteps.user_uploads_certificate();
		logger.info("user uploads certificate");
	}

	@Given("^user relogs as \"([^\"]*)\"$")
	public void userRelogsAs(String name) throws Throwable {
		commonSteps.user_relogs_as(name);
		logger.info("user relogs as "+ name);
	}
	
	@Then("^user sees organisations \"([^\"]*)\"$")
	public void user_sees_organisations(String oraganisations) {
		commonSteps.user_sees_organisations(oraganisations);
		logger.info("user sees organisations "+ oraganisations);
	}
	
	@Then("^user doesn't see organisations \"([^\"]*)\"$")
	public void user_doesn_t_see_organisations(String oraganisations) {
		commonSteps.user_doesn_t_see_organisations(oraganisations);
		logger.info("user doesn't sees organisations "+ oraganisations);
	}
	
	@Then("^for \"([^\"]*)\" user doesn't see cell menu option \"([^\"]*)\"$")
	public void for_user_doesn_t_see_cell_menu_option(String tableEntry, String cellMenuOption) {
		commonSteps.for_user_doesn_t_see_cell_menu_option(tableEntry, cellMenuOption);
		logger.info("for " + tableEntry + " user doesn't see cell menu option " + cellMenuOption);
	}	

	@Then("^user doesn't see aktionen option \"([^\"]*)\"$")
	public void user_doesn_t_see_aktionen_option(String aktionenOption) {
		commonSteps.user_doesn_t_see_aktionen_option(aktionenOption);
		logger.info("user doesn't see cell menu option " + aktionenOption	);

	}

	// See
	@And("^user sees sub tabs \"([^\"]*)\"$")
	public void user_sees_sub_tabs(String expectedTabs) {
		commonSteps.user_sees_sub_tabs(expectedTabs);
		logger.info("user sees sub tabs " + expectedTabs);
	}

	@And("^table is empty$")
	public void table_is_empty() throws Throwable {
		commonSteps.tableIsEmpty();
		logger.info("Table is empty");
	}

	@And("^table is not empty$")
	public void table_is_not_empty() throws Throwable {
		commonSteps.tableIsNotEmpty();
		logger.info("Table is not empty");
	}
}
