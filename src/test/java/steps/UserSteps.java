package steps;

import net.thucydides.core.annotations.Step;
import pages.UserPage;

public class UserSteps {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3090306352258017880L;	

	private UserPage userPage;
	
//	public UserSteps(Pages pages) {
//        super(pages);
//        userPage = getPages().get(UserPage.class);
//    }

	@Step
    public void userSearchesLocalForUser(String search) {
		userPage.userSearchesLocalForUser(search);
    }
}
