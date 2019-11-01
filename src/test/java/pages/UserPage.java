package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class UserPage extends BasePage{

	@FindBy(xpath = "//*[@id=\"root\"]/main/div/div/div[3]/div/div[1]/div/label/input")
	//private List<WebElement> searchfield;
	private WebElement searchfield;


    public void userSearchesLocalForUser(String search) {
		wait(searchfield);
		typeInto(searchfield,search);
    }
}
