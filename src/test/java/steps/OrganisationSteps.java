package steps;

import net.thucydides.core.annotations.Step;
import pages.OrganisationPage;

public class OrganisationSteps{
	
	private static final long serialVersionUID = -9046877550864594458L;
	
	private OrganisationPage organisationPage;

//	public OrganisationSteps(Pages pages) {
//        super(pages);
//        organisationPage = getPages().get(OrganisationPage.class);
//    }
	
	@Step("User click {0} arrow")
	public void user_navigates_to_organisation_by_arrow(String organisation) {
		organisationPage.userNavigatesToOrganisationByArrow(organisation);		
	}	

	@Step("User selects {0} from context menu of {1}")
	public void select_option_from_context_menu_of(String contextMenuOption, String organisation) {
		organisationPage.selectOptionFromContextMenuOf(contextMenuOption, organisation);		
	}

    //EDIT	
	@Step("Only {0} is dislayed")
	public void only_organisation_is_displayed(String organisationName) {
		organisationPage.onlyOrganisationIsDisplayed(organisationName);		
	}

	@Step("user selects {0} by cell menu option {1} from tree view")
	public void user_selects_by_cell_menu_option_from_tree_view(String organisationName, String menuOption) {
		organisationPage.userSelectsByCellMenuOptionFromTreeView(organisationName, menuOption);
	}

	//Zertifikate
	@Step("Increment zertifikat name")
	public void increment_zertifikat_name() {
		organisationPage.incrementZertifikatName();	
	}

}
