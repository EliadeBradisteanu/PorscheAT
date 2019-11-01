package stepdefinitions;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import net.thucydides.core.annotations.Steps;
import steps.OrganisationSteps;

public class OrganisationSD {
	
	private static final Logger logger = LoggerFactory.getLogger(OrganisationSD.class);
	
	@Steps
	OrganisationSteps organisationSteps;

	
	//ADD
	@And("^User navigates to \"([^\"]*)\" by arrow$")
	public void user_navigates_to_by_arrow(String organisation) {
		organisationSteps.user_navigates_to_organisation_by_arrow(organisation);
		logger.info("User click " + organisation + " arrow");
	}
	
	@And("^User selects \"([^\"]*)\" from context menu of \"([^\"]*)\"$")
	public void select_option_from_context_menu_of(String contextMenuOption, String organisation) {
		organisationSteps.select_option_from_context_menu_of(contextMenuOption, organisation);
		logger.info("User selects " + contextMenuOption + " from context menu of" + organisation);
	}
	
	//EDIT	
	@Then("^only \"([^\"]*)\" organisation is displayed$")
	public void only_organisation_is_displayed(String organisationName) {
		organisationSteps.only_organisation_is_displayed(organisationName);
		logger.info("Only " + organisationName + " is dislayed");
	}
	
	@And("^user selects \"([^\"]*)\" by cell menu option \"([^\"]*)\" from tree view$")
	public void user_selects_by_cell_menu_option_from_tree_view(String organisationName, String menuOption) {
		organisationSteps.user_selects_by_cell_menu_option_from_tree_view(organisationName, menuOption);
		logger.info("User selects " + organisationName + " by cell menu option " + menuOption + " from tree view");
	}
	
	//Zertifikate
	@Then("^increment zertifikat name$")
	public void increment_zertifikat_name() {
		organisationSteps.increment_zertifikat_name();
		logger.info("Increment zertifikat name");
	}
}
