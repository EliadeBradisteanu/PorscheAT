package pages;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import net.serenitybdd.core.annotations.findby.By;

public class OrganisationPage extends BasePage {

    private static final String NEUE_ORGANISATION_ERSTELLEN = "Neue Organisation erstellen";

    //ADD
    @FindBy(css = ".pui-flex.pui-flex--wrap-no.pui-flex--main-axis-space-between.pui-m-nl--12.pui-m-nr--12")
    private List<WebElement> organisations;

    @FindBy(css = ".-pui-text-size-2-regular.pui-text--wrap")
    public WebElement headSectionText;

    //EDIT
    @FindBy(css = ".pui-flex__child.pui-nav__item")
    private List<WebElement> navTabs;

    @FindBy(css = ".pui-input__field")
    private List<WebElement> inputFields;

    @FindBy(css = ".pui-nav-menu-list__text")
    private List<WebElement> userDropDown;

    @FindBy(css = ".pui-tree-view__row")
    private List<WebElement> treeRows;

    //ADD Organization
    public void userNavigatesToOrganisationByArrow(String organisation) {
        wait(organisations);
        // TimeUtil.sleep(2, TimeUnit.SECONDS);
        WebElement orgElement = getWebElementFromListByText(organisations, organisation)
                .findElement(By.cssSelector("div span span"));
        clickOn(orgElement);
    }

    public void selectOptionFromContextMenuOf(String contextMenuOption, String organisation) {
        WebElement contextMenu = getWebElementFromListByText(organisations, organisation)
                .findElement(By.cssSelector(".pui-context-menu"));

        scrollIntoView(contextMenu);
        hoverOverElement(contextMenu);

        //context menu options
        List<WebElement> contextMenuOptions = contextMenu.findElements(By.cssSelector("div ul li"));
        clickOn(getWebElementFromListByText(contextMenuOptions, contextMenuOption));

        Assert.assertEquals(contextMenuOption, NEUE_ORGANISATION_ERSTELLEN);
    }

    public void onlyOrganisationIsDisplayed(String organisationName) {
        Assert.assertEquals(1, organisations.size());
        Assert.assertTrue(getWebElementFromListByText(organisations, organisationName)
                .getText().contains(organisationName));
    }

    public void userSelectsByCellMenuOptionFromTreeView(String organisationName, String menuOption) {
        wait(treeRows);

        WebElement cellMenu = getWebElementFromListByText(treeRows, organisationName)
                .findElement(By.cssSelector(".pui-context-menu"));

        scrollIntoView(cellMenu);
        hoverOverElement(cellMenu);

        wait(cellMenu);

        //cell menu options
        List<WebElement> contextMenuOptions = cellMenu.findElements(By.cssSelector("div ul li"));
        clickOn(getWebElementFromListByText(contextMenuOptions, menuOption));
    }

    public void incrementZertifikatName() {
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(Integer.valueOf(propertyManager.getXtaGeratezertifikatNameEnding()) + 1);

        propertyManager.setXtaGeratezertifikatNameEnding(sb.toString());
    }
}
