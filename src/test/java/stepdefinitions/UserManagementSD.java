package stepdefinitions;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;
import steps.UserSteps;

public class UserManagementSD {
	
	private static final Logger logger = LoggerFactory.getLogger(UserManagementSD.class);

	@Steps
	UserSteps userSteps;


	@And("^user searches local for user \"([^\"]*)\"$")
	public void userSearchesLocalForUser(String search) throws Throwable {
	userSteps.userSearchesLocalForUser(search);
	}
}
