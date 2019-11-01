package pages;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.time.LocalDate;
import java.time.format.DateTimeFormatterBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.stream.IntStream;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.screenplay.actions.Scroll;
import net.thucydides.core.annotations.DefaultUrl;
import util.PressEnter;
import util.TimeUtil;

//@DefaultUrl("https://porsche.dev-servicelayers.io/ppnmda/appforward.do")
@DefaultUrl("https://ppnlite.porsche.com/ppnmda/forwardppn.do")
public class HomePage extends BasePage {   
	
	private static final String XTAGERÄTEZERTIFIKAT = "xtagerätezertifikat";
	private static final String NEWLINE = "\n";
	private static final String PPN_STANDARD_USER = "ppn_standard_user)";
	private static final String PPN_STANDARD_USER_PPN_GROUP_COORDINATOR = "ppn_standard_user,ppn_group_coordinator)";
	private static final String PPN_GROUP_MANAGER_PPN_STANDARD_USER = "ppn_group_manager,ppn_standard_user)";
	private static final String PPN_STANDARD_USER_PPN_MANAGER = "ppn_standard_user,ppn_manager)";
	private static final String PPN_COORDINATOR_PPN_STANDARD_USER_PPN_GROUP_COORDINATOR = "ppn_coordinator,ppn_standard_user,ppn_group_coordinator)";
	private static final String PPN_STANDARD_USER_PPN_MANAGER_PPN_GROUP_COORDINATOR = "ppn_standard_user,ppn_manager,ppn_group_coordinator)";
	private static final String PPN_GROUP_MANAGER_PPN_STANDARD_USER_PPN_GOD = "ppn_group_manager,ppn_standard_user,ppn_god)";
	
	private static final String XTAGLOBAL = "xtaglobal";
	private static final String XTAMANAGER = "xtamanager";
	private static final String XTAMANAGERIO = "xtamanagerio";
	private static final String XTACOORDINATOR = "xtacoordinator";
	private static final String XTAGROUPMANAGER = "xtagroupmanager";
	private static final String XTAGROUPCOORDINATOR = "xtagroupcoordinator";
	private static final String XTAUSERIO = "xtauserio";
	private static final String XTAUSER = "xtauser";
	
	private static final String USER = "user";
	private static final String NO_RESULTS_FOUND = "No Results found";
	private static final String BERECHTIGUNGEN = "Berechtigungen";
    private static final String BENUTZER = "Benutzer";
    private static final String ORGANISATION_BENUTZER = "OrganisationBenutzer";
    private static final String ZERTIFIKATE = "Zertifikate";
    private static final String ORGANISATION = "Organisation";
    private static final String AKTIONEN = "Aktionen";

    private static final String PPN_ADMINISTRATION_DEV = "PPN Administration (Dev)";
    private static final String PPN_ADMINISTRATION_TEST = "PPN Administration (Test)";

    private static final String EMPTY_STRING = new String();
    private static final String SPACE = " ";

    private static final Logger logger = LoggerFactory.getLogger(HomePage.class);

    //-----------Login to PNN Lite-------------------
    @FindBy(id = "username")
    private WebElementFacade username;

    @FindBy(tagName = "option")
    private List<WebElement> usernameOptions;

    @FindBy(id = "password")
    private WebElement password;

    //@FindBy(css = "#root > main > form > div:nth-child(6) > button")
    @FindBy(css = ".btn.btn-icon.btn-arrow-right.btn-default.btn-md.submit")
    private WebElement login;

    //@FindBy(css = ".list-bullet__label.list-application__link")
    @FindBy(css = ".with-arrow")
    private List<WebElement> appList;

    @FindBy(css = "section > div > div.column.column--6.address-column > div.address-container.-spacing-d.-align-center > div:nth-child(1)")
    private WebElement userInformation;

    @FindBy(css = ".-pui-text-size-copy.pui-text--wrap")
    private List<WebElement> loggedInUser;

    //-----------Login to PNN Lite-------------------

    @FindBy(css = ".pui-link-icon-text__label.pui-link-icon-text__label--black")
    private List<WebElement> userOptions;

    // size 6
    @FindBy(css = ".pui-flex__child.pui-nav__item")
    private List<WebElement> navTabs;

    @FindBy(css = ".pui-tab__menu-item")
    private List<WebElement> secondRowTabs;

    @FindBy(css = ".-pui-text-size-1-thin.pui-text--wrap")
    public WebElement header1SectionText;

    @FindBy(css = ".-pui-text-size-2-regular.pui-text--wrap")
    public WebElement header2SectionText;
    
    @FindBy(css = ".-pui-text-size-3-regular.pui-text--wrap")
    public WebElement header3SectionText; 
    
    @FindBy(css = ".-pui-text-size-4-thin.pui-text--wrap")
    public WebElement header4SectionText;
    
    @FindBy(css = ".-pui-text-size-5-regular.pui-text--wrap")
    public WebElement header5SectionText;
    
    @FindBy(css = ".-pui-text-size-5-thin.-pui-text-color-grey.pui-text--wrap")
    public WebElement header5SectionText1;

    @FindBy(css = ".pui-mb--24 > p")
    public List<WebElement> basicInformations;

    @FindBy(css = ".pui-notification-common.pui-notification-common--error")
    public WebElement errorMessage;

    @FindBy(css = ".-pui-text-size-4-thin.pui-text--wrap")
    //@FindBy(className = "-pui-text-size-4-thin pui-text--wrap")
    public List<WebElement> searchResultsOrganisation;

    @FindBy(css = ".-pui-text-size-3-thin.pui-text--wrap.pui-mb--24")
    public WebElement searchResultsUser;

    @FindBy(css = ".pui-button-regular")
    private List<WebElement> buttons;

    @FindBy(css = ".pui-icon.pui-icon--check.pui-icon--regular.pui-button-regular__icon")
    private WebElement bestätigenOrgButton;

    @FindBy(css = ".pui-icon.pui-icon--arrow_right_hair.pui-icon--regular.pui-button-regular__icon")
    private WebElement bestätigenGroupButton;

    @FindBy(css = ".pui-button-circle")
    private List<WebElement> circleButtons;

    @FindBy(css = ".pui-action-context-menu__item")
    private List<WebElement> aktionenOptions;

    @FindBy(css = ".pui-Select-control")
    private List<WebElement> dropdowns;

    @FindBy(css = ".pui-input__field")
    private List<WebElement> inputFields;

    @FindBy(css = ".pui-flex__child.pui-flex__child--width-full")
    private List<WebElement> inputFieldsAfterPlusSign;

    @FindBy(css = ".pui-link-icon-text__label")
    private List<WebElement> links;

    @FindBy(css = ".-pui-text-size-copy.pui-text--wrap.pui-toast__text")
    private WebElement toast;

    @FindBy(css = ".pui-table__body")
    private List<WebElement> tableCellsx;

    @FindBy(css = ".pui-table__row-container")
    private List<WebElement> tableCells;
    
    @FindBy(css = ".pui-table__cell")
    private List<WebElement> tableCellsy;

    @FindBy(css = ".pui-table__row-container div a span:nth-child(2)")
    private List<WebElement> tableCellNames;

    @FindBy(css = ".pui-tab__content.pui-tab__content--active .pui-table__row-container")
    private List<WebElement> subTableCells;

    @FindBy(css = ".-pui-text-size-copy")
    private List<WebElement> languages;
    
    @FindBy(css = ".pui-checkbox")
    private List<WebElement> checkbox;


    //-------------date picker--------------
    @FindBy(css = ".react-datepicker__day")
    private List<WebElement> days;

    @FindBy(css = ".react-datepicker__current-month")
    private WebElement currentMonth;

    @FindBy(css = ".react-datepicker__navigation.react-datepicker__navigation--next")
    private WebElement monthsBefore;

    @FindBy(css = ".react-datepicker__navigation.react-datepicker__navigation--previous")
    private List<WebElement> monthsPrevious;

    @FindBy(css = ".react-datepicker__year-read-view--selected-year")
    private WebElement yearArrowDown;

    @FindBy(css = ".react-datepicker__year-option")
    private List<WebElement> years;

    //-------------date picker--------------

    @FindBy(css = ".pui-dropzone.pui-mt--6.pui-mb--6")
    private WebElement dragzone;

    @FindBy(css = ".hidden-xs")
    private WebElement logout;
    
    @FindBy(css = ".with-arrow")
    private List<WebElement> systems;

    Robot r;
    WebElement dropdown;

    //make a new thread for pressing enter to take the certificate
    //the certificate has to be the first in the list of certificates
    public void login(String userName) {
    	PressEnter pressEnter = new PressEnter();
        pressEnter.start();

        //open the login page
        this.open();
        //select username and enter password

        wait(username);
        pressEnter.cancel();
        waitABit(1000);

        username.selectByVisibleText(userName);
        WebElement usernameElement = getWebElementFromListByText(usernameOptions, userName);
        wait(usernameElement);
        clickOn(usernameElement);

        wait(password);
        typeInto(password, propertyManager.getPasswordForAllUsers());

        clickOn(login);

        //assert correct user has been logged in
        wait(userInformation);
       // Assert.assertEquals(userName, userInformation.getText().toLowerCase().replaceAll(SPACE, EMPTY_STRING));

        /*if (propertyManager.getIsOnDev()) {
            clickOn(getWebElementFromListByText(appList, PPN_ADMINISTRATION_DEV));
        } else {*/
            clickOn(getWebElementFromListByText(appList, PPN_ADMINISTRATION_TEST));
        //}

        //switch to second tab
        ArrayList<String> tabs = new ArrayList<>(getDriver().getWindowHandles());
        getDriver().switchTo().window(tabs.get(1));

        PressEnter pressEnter2 = new PressEnter();
        pressEnter2.start();

        //for stale exception
        wait(navTabs);
        pressEnter2.cancel();
        waitABit(1000);
		
        //when using loggin with ping change to loggedInUser.get(2)
        //and uncomment the switch because rolles are different on old test to new pingID/test
		//for rolles
		/*switch (userName) {
        case XTAGLOBAL:          	            	
    		Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_GROUP_MANAGER_PPN_STANDARD_USER_PPN_GOD));			
	        break;
        case XTAMANAGER:
			Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_STANDARD_USER_PPN_MANAGER_PPN_GROUP_COORDINATOR));			
           break;
        case XTACOORDINATOR:
    		Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_COORDINATOR_PPN_STANDARD_USER_PPN_GROUP_COORDINATOR));		
           break;
        case XTAMANAGERIO:
			Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_STANDARD_USER_PPN_MANAGER));		
              break;
        case XTAGROUPMANAGER:
			Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_GROUP_MANAGER_PPN_STANDARD_USER));		
            break;
        case XTAGROUPCOORDINATOR:
    		Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_STANDARD_USER_PPN_GROUP_COORDINATOR));		
	        break;
        case XTAUSER:
    		Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_STANDARD_USER_PPN_GROUP_COORDINATOR));		
	        break; 
        case XTAUSERIO:
        	Assert.assertTrue(loggedInUser.get(3).getText().toLowerCase().replace(SPACE, EMPTY_STRING)
					.split("\\(")[1].equals(PPN_STANDARD_USER.toLowerCase()));		
	        break;    
        default:
            break;
    }*/	
        
    //change to de     
    clickOn(getWebElementFromListByText(languages, "DE"));    
}

    public void navigateToTab(String tab) {
        wait(navTabs);
        clickOn(getWebElementFromListByText(navTabs, tab));
        
        //change language again for every tab --bug --delete it after  
        TimeUtil.sleep(1, TimeUnit.SECONDS);      
        clickOn(getWebElementFromListByText(languages, "DE"));
        
        if(tab.equals("Gruppen")) {
            header1SectionText = getDriver().findElement(By.cssSelector(".-pui-text-size-3-regular.pui-text--wrap"));
        }        
        
        Assert.assertEquals(tab, header1SectionText.getText());
    }

    public void userNavigatesToSecondRowTab(String tabName) {
        clickOn(getWebElementFromListByText(secondRowTabs, tabName));
    }

    public void userPresses(String buttonText) {
    	TimeUtil.sleep(1000, TimeUnit.MILLISECONDS);    	
    	
        if (propertyManager.getIsOnDev()) {
            if (getBody().getText().contains("SSO-Mapping entfernen")) {
                wait(bestätigenGroupButton);
                clickOn(bestätigenGroupButton);
            } else {
                wait(buttons);
                clickOn(getWebElementFromListByText(buttons, buttonText));
            }

        } else {
            /*if (getBody().getText().contains("SSO-Mapping entfernen")) {
                wait(bestätigenGroupButton);
                clickOn(bestätigenGroupButton);
            } else {*/
				if (buttonText.equals("Weiter")) {
					buttons = getDriver().findElements(By.cssSelector(".pui-button-regular"));
					clickOn(getWebElementFromListByText(buttons, buttonText));
				} else {
					buttons = getDriver().findElements(By.cssSelector(".pui-button-regular"));
					//scroll to the top of page due to top freezing 				
					scrollIntoView(getWebElementFromListByText(buttons, buttonText));
					scrollBy(30, 0);
					
					clickOn(getWebElementFromListByText(buttons, buttonText));
					
				}
            /*}*/
        }
    }

    public void userPressesCircleButton(String buttonText) {
        clickOn(getWebElementFromListByText(circleButtons, buttonText));
    }

    public void userClicksField(String fieldText) {
        if (fieldText.equals("Neue Gültigkeitsdauer") 
           || fieldText.equals("Straße (Lokalisiert)")
           || fieldText.equals("Stadt (Lokalisiert)")
           || fieldText.equals("Staat (Lokalisiert)")
           || fieldText.equals("Bank (Lokalisiert)")
           || fieldText.equals("Kontoinhaber (Lokalisiert)")) {
            clickOn(getWebElementFromListByText(inputFieldsAfterPlusSign, fieldText));
        } else {
            clickOn(getWebElementFromListByText(inputFields, fieldText));
        }

        clickOn(getWebElementFromListByText(inputFields, fieldText));
    }

    public void userClicksLink(String linkText) {
        clickOn(getWebElementFromListByText(links, linkText));
    }

    public void buttonIsDisabled(String buttonText) {
    	 buttons = getDriver().findElements(By.cssSelector(".pui-button-regular"));
         Assert.assertTrue(isWebElementDisabled(getWebElementFromListByText(buttons, buttonText)));
    }

    public void checkboxForIsDisabled(String tableEntry) {
        Assert.assertTrue(isWebElementDisabled(getWebElementFromListByText(tableCells, tableEntry)
                .findElement(By.cssSelector(".pui-checkbox__field"))));
    }

    public void checkboxIsDisabled(String checkboxText) {
        Assert.assertTrue(isWebElementDisabled(getWebElementFromListByText(checkbox, checkboxText)
                .findElement(By.cssSelector(".pui-checkbox__field"))));
    }

    public void dropdownIsDisabled(String dropdownText) {
        Assert.assertTrue(getWebElementFromListByText(dropdowns, dropdownText)
                .findElement(By.cssSelector(".pui-Select-input")).getAttribute("aria-disabled").equals("true"));
    }

    public void fieldIsDisabled(String fieldText) {
        Assert.assertTrue(isWebElementDisabled(
                getWebElementFromListByAttribute(inputFields, "placeholder", fieldText)));
    }

    public void userSeesPageBodyInfo(String text) {
    	TimeUtil.sleep(1000, TimeUnit.MILLISECONDS);
        String[] textToArray = text.split(SPACE);
        
        Arrays.stream(textToArray)
                .forEach(x -> Assert.assertTrue(getBody().getText().contains(x)));
    }

    public void userSeesHeaderoneInfo(String text) {
    	TimeUtil.sleep(2000, TimeUnit.MILLISECONDS);
    	Assert.assertTrue(header1SectionText.getText().contains(text));
    }

    public void userSeesHeadertwoInfo(String text) {
        Assert.assertTrue(header2SectionText.getText().contains(text));
    }
    
    public void userSeesHeaderthreeInfo(String text) {
        Assert.assertTrue(header3SectionText.getText().contains(text));
 	}

    public void userSeesHeaderfourInfo(String text) {
        Assert.assertTrue(header4SectionText.getText().replaceAll(NEWLINE, SPACE).contains(text));
    }
    
    public void userSeesHeaderfiveInfo(String text) {
        Assert.assertTrue(header5SectionText1.getText().replaceAll(NEWLINE, SPACE).contains(text));
  	}

    public void userSeesInfo(String text) {
    	TimeUtil.sleep(1000, TimeUnit.MILLISECONDS);
        wait(basicInformations);
        String[] textToArray = text.split(SPACE);

        //save only user entered data
        StringBuilder sb = new StringBuilder();

        IntStream.range(0, basicInformations.size())
                /*.filter(el -> el % 2 == 0)*/
                .mapToObj(basicInformations::get)
                .forEach(el -> sb.append(el.getText()));

	    /*System.out.println(basicInformations.size());
	    basicInformations.forEach(y -> System.out.println("I:"+y.getText()));
	    System.out.println(text);
	    System.out.println(sb);
	    Arrays.stream(textToArray)
        .forEach(x -> System.out.println(sb.toString().contains(x)));
	    System.exit(0); */


        Arrays.stream(textToArray)
                .forEach(x -> Assert.assertTrue(sb.toString().contains(x)));

    }

    public void userDoesnTSeeInfo(String info) {
        String[] t = info.split(SPACE);

        Arrays.stream(t)
                .forEach(x -> Assert.assertFalse(getBody().getText().contains(x)));
    }

    public void userSeesErrorMessage(String errorMessage) { 
    	
    	if(errorMessage.contains("Aufmerksamkeit")) {
    		this.errorMessage = getDriver()
    				.findElement(By.cssSelector(".-pui-text-size-5-thin.-pui-text-color-grey.pui-text--wrap"));
    	}
    	
    	if(errorMessage.contains("require")) {
    		this.errorMessage = getDriver()
    				.findElement(By.cssSelector(".-pui-text-size-5-thin.-pui-text-color-grey.pui-text--wrap"));
    	}
    	    Assert.assertEquals(errorMessage, this.errorMessage.getText().replaceAll(NEWLINE, SPACE));
    	
    }

    public void userSeesSearchResultsFor(String searchType, String searchText) {
        StringBuilder sb = new StringBuilder();
        String[] textToArray = searchText.split(SPACE);
        
       	searchResultsOrganisation = getDriver().findElements(By.cssSelector(".-pui-text-size-4-thin.pui-text--wrap"));
        
        switch (searchType) {
            case ORGANISATION:            	            	
                wait(tableCells);
                tableCells.forEach(t -> sb.append(t.getText()));
                if (tableCells.size() > 1 || tableCells.size() == 0) {
                     Assert.assertEquals(searchResultsOrganisation.get(0).getText(), tableCells.size() + " Organisationen");
                } else {
                    Assert.assertEquals(searchResultsOrganisation.get(0).getText(), tableCells.size() + " Organisation");
                }

                if (tableCells.size() == 0) {
                  	Assert.assertTrue(header5SectionText.getText().equals(NO_RESULTS_FOUND));
                } else {
                	Assert.assertTrue(sb.toString().contains(searchText));
                }                

                break;
            case ZERTIFIKATE:
                //wait(searchResultsOrganisation);     
                if (searchResultsOrganisation.get(1).getText().contains("0 / 0")) {
                    Assert.assertEquals(searchResultsOrganisation.get(1).getText(), "0 / 0 Gerätezertifikate");
                } else {
                    wait(subTableCells);
                    subTableCells.forEach(t -> sb.append(t.getText()));
                    Arrays.stream(textToArray)
                            .forEach(x -> Assert.assertTrue(sb.toString().contains(x)));
                    if (subTableCells.size() == 1) {
                        Assert.assertEquals(searchResultsOrganisation.get(1).getText(),
                                subTableCells.size() + " / " + subTableCells.size() + " Gerätezertifikat");
                    } else {
                        Assert.assertEquals(searchResultsOrganisation.get(1).getText(),
                                subTableCells.size() + " / " + subTableCells.size() + " Gerätezertifikate");
                    }
                }

                break;
            case ORGANISATION_BENUTZER:
                //wait(searchResultsOrganisation);
                Assert.assertEquals(searchResultsOrganisation.get(0).getText(),
                        tableCells.size() + " / " + tableCells.size() + " Benutzer");
                break;
            case BENUTZER:
                wait(tableCells);
                tableCells.forEach(t -> sb.append(t.getText()));
                Assert.assertEquals(searchResultsUser.getText(), tableCells.size() + " Benutzer");
                break;
            case BERECHTIGUNGEN:
                wait(tableCells);
                Assert.assertEquals(2, tableCells.size());
                break;

            default:
                break;
        }
    }

    public void verifyToast(String lifecycle, String status) {
        wait(toast);
        
        Arrays.asList((lifecycle + SPACE + status).split(SPACE))
                .forEach(x -> Assert.assertTrue(toast.getText().contains(x)));

        // close toast
        clickOn(getDriver().findElement(By.cssSelector(".pui-toast__close")));
    }

    public void selectAktionenOption(String option) {
    	buttons = getDriver().findElements(By.cssSelector(".pui-button-regular"));
        clickOn(getWebElementFromListByText(buttons, AKTIONEN));
        wait(aktionenOptions);
        clickOn(getWebElementFromListByText(aktionenOptions, option));
    }

    public void userSelectsFromDropdown(String dropdownName, String option) {
        //wait(dropdowns);    	   	
    	
    	if(dropdownName.equals("Typ") && option.equals("Applikation")) {
    			 dropdown = getDriver().findElements(By.cssSelector(".pui-Select-control")).get(1);
    	} else {
    		 dropdown = getWebElementFromListByText(dropdowns, dropdownName);
    	}
    
        //clear all selection if element exists
        if (dropdown.findElements(By.cssSelector(".pui-Select-clear-zone")).size() != 0 &&
                !option.equals("Backend 1")) {        	
        	if(dropdownName.equals("Typ") && option.equals("Applikation")) {
        		//do nothing
        	} else {
        		clickOn(dropdown.findElement(By.cssSelector(".pui-Select-clear-zone")));
        	}
        }
     
        clickOn(dropdown);        

        WebElement dropdownOption = dropdown.findElement(By.cssSelector(".pui-Select-input > input"));
        Arrays.asList(option.split(","))
                .forEach(o -> {
                    typeInto(dropdownOption, o.trim());

                    //not for selecting Applikationsrolle 1st option
                    if (option.equals("Applikation")) {
                        pressArrowDown(dropdownOption);
                    }

                    if (option.equals("Aktiviert")) {
                        pressArrowDown(dropdownOption);
                    }

                    waitABit(1000);
                    pressEnter(dropdownOption);
                    if (dropdownName.equals("Kreditkarte")) {
                        moveToAndClick(dropdown, -200, 0);
                    }
                });
    }

    public void userSelectsDatepickerFrom(String date, String fielddName) {
        //click the date picker	-- click twice to clear the field
        WebElement parent = getWebElementFromListByAttribute(inputFields, "placeholder", fielddName)
                .findElement(By.xpath("./.."));
        clickOn(parent.findElement(By.tagName("div")));
        clickOn(parent.findElement(By.tagName("div")));

        LocalDate parsedDate = LocalDate.parse(date, new DateTimeFormatterBuilder()
                // case insensitive to parse JAN and FEB
                .parseCaseInsensitive()
                // add pattern
                .appendPattern("dd-MMMM-yyyy")
                // create formatter (use English Locale to parse month names)
                .toFormatter(Locale.ENGLISH));

        //select month
        while (!currentMonth.getText().toLowerCase().equals(parsedDate.getMonth().toString().toLowerCase())) {
            clickOn(monthsBefore);
        }

        //select year
        clickOn(yearArrowDown);
        clickOn(getWebElementFromListByText(years, date.split("-")[2]));

        //select day
        String day = date.split("-")[0];
        if (day.startsWith("0")) {
            day = day.substring(1);
        }

        clickOn(getWebElementFromListByText(days, day));
    }

    public void userTicksCheckbox(String name) {
        wait(checkbox);
        clickOn(getWebElementFromListByText(checkbox, name));
    }

    public void userPopulatesFieldWith(String fieldName, String text) {

        //cannot have unique gerätezertifikat name, even if deleted
        if (text.equals(XTAGERÄTEZERTIFIKAT)) {
            text = text + propertyManager.getXtaGeratezertifikatNameEnding();
        }

        typeInto(getWebElementFromListByAttribute(inputFields, "placeholder", fieldName), text);

    }

    public void userSelectsByTableEntry(String selectName) {    	
    	TimeUtil.sleep(1000, TimeUnit.MILLISECONDS);
    	clickOn(getWebElementFromListByText(tableCellsy, selectName));
    }

    public void userSelectsBySubtableEntry(String selectName) {
        wait(subTableCells);

        if (selectName.equals(XTAGERÄTEZERTIFIKAT)) {
            selectName = selectName + propertyManager.getXtaGeratezertifikatNameEnding();
        }

        clickOn(getWebElementFromListByText(subTableCells, selectName)
                .findElement(By.cssSelector("div a")));
    }

    public void userSelectsByCellMenuOption(String tableEntry, String option) {
        WebElement cellMenu = null;
        
        TimeUtil.sleep(1000, TimeUnit.MILLISECONDS);

        if (tableEntry.equals(XTAGERÄTEZERTIFIKAT)) {
            wait(subTableCells);
            cellMenu = getWebElementFromListByText(subTableCells, tableEntry)
                    .findElement(By.cssSelector(".pui-table__cell-menu"));
        } else if (tableEntry.equals("ssoafranklin")) {
            cellMenu = getDriver()
                    .findElements(By.cssSelector(".pui-table__cell-menu")).get(4);
        } else {
            wait(tableCells);
            cellMenu = getWebElementFromListByText(tableCells, tableEntry)
                    .findElement(By.cssSelector(".pui-table__cell-menu"));
        }

        scrollIntoView(cellMenu);
        hoverOverElement(cellMenu);

        //cell menu options
        List<WebElement> contextMenuOptions = cellMenu.findElements(By.cssSelector("div div ul li"));
        wait(contextMenuOptions);
        clickOn(getWebElementFromListByText(contextMenuOptions, option));
    }

    public void userSelectsCheckboxFromSearch(String tableEntry) {
        wait(tableCells);
        clickOn(getWebElementFromListByText(tableCells, tableEntry)
                .findElement(By.cssSelector(".pui-checkbox")));
    }

    public void userSearchesForIn(String searchText, String placeholderText) {
        typeInto(getWebElementFromListByAttribute(inputFields, "placeholder", placeholderText), searchText);
        pressEnter(getWebElementFromListByAttribute(inputFields, "placeholder", placeholderText));

    }

    public void userSearchesUser(String userName) {
        typeInto(getWebElementFromListByAttribute(inputFields, "placeholder", "Nach Benutzern suchen"), userName);
        pressEnter(getWebElementFromListByAttribute(inputFields, "placeholder", "Nach Benutzern suchen"));
    }

    public void userLogsOutOfPPNLite() {
//        ArrayList<String> tabs2 = new ArrayList<String>(getDriver().getWindowHandles());
//        getDriver().switchTo().window(tabs2.get(0));
//        wait(logout);
//        clickOn(logout);
    }

    public void clickOnUserAndSelectOption(String userName, String option) {
        clickOn(getWebElementFromListByText(loggedInUser, userName));
        clickOn(getWebElementFromListByText(userOptions, option));
    }


    public void userChecksDownloadedCertificate() {
        File source = new File("C:/Users/eliad/Downloads/certificatesBundle.ahk");
        File dest = new File("src/test/resources/downloads/certificatesBundle.ahk");
        File downloads = new File("src/test/resources/downloads");

        try {

            Files.copy(source.toPath(), dest.toPath(), StandardCopyOption.REPLACE_EXISTING);

            waitABit(2000);

            for (File f : downloads.listFiles()) {
                Assert.assertTrue(f.length() > 0);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public void userUploadsCertificate() {
        clickOn(dragzone);

        waitABit(2000);


        try {
            r = new Robot();
        } catch (AWTException e) {
            e.printStackTrace();
        }
        r.keyPress(KeyEvent.VK_C);        // C
        r.keyRelease(KeyEvent.VK_C);
        r.keyPress(KeyEvent.VK_SHIFT);
        r.keyPress(KeyEvent.VK_SEMICOLON);
        r.keyRelease(KeyEvent.VK_SEMICOLON);
        r.keyRelease(KeyEvent.VK_SHIFT);
        r.keyPress(KeyEvent.VK_BACK_SLASH);    // / (slash)
        r.keyRelease(KeyEvent.VK_BACK_SLASH);

        r.keyPress(KeyEvent.VK_C);
        r.keyRelease(KeyEvent.VK_C);
        r.keyPress(KeyEvent.VK_E);
        r.keyRelease(KeyEvent.VK_E);
        r.keyPress(KeyEvent.VK_R);
        r.keyRelease(KeyEvent.VK_R);
        r.keyPress(KeyEvent.VK_T);
        r.keyRelease(KeyEvent.VK_T);
        r.keyPress(KeyEvent.VK_I);
        r.keyRelease(KeyEvent.VK_I);
        r.keyPress(KeyEvent.VK_F);
        r.keyRelease(KeyEvent.VK_F);
        r.keyPress(KeyEvent.VK_I);
        r.keyRelease(KeyEvent.VK_I);
        r.keyPress(KeyEvent.VK_C);
        r.keyRelease(KeyEvent.VK_C);
        r.keyPress(KeyEvent.VK_A);
        r.keyRelease(KeyEvent.VK_A);
        r.keyPress(KeyEvent.VK_T);
        r.keyRelease(KeyEvent.VK_T);
        r.keyPress(KeyEvent.VK_E);
        r.keyRelease(KeyEvent.VK_E);
        r.keyPress(KeyEvent.VK_S);
        r.keyRelease(KeyEvent.VK_S);
        r.keyPress(KeyEvent.VK_SHIFT);
        r.keyPress(KeyEvent.VK_B);
        r.keyRelease(KeyEvent.VK_SHIFT);
        r.keyRelease(KeyEvent.VK_B);
        r.keyPress(KeyEvent.VK_U);
        r.keyRelease(KeyEvent.VK_U);
        r.keyPress(KeyEvent.VK_N);
        r.keyRelease(KeyEvent.VK_N);
        r.keyPress(KeyEvent.VK_D);
        r.keyRelease(KeyEvent.VK_D);
        r.keyPress(KeyEvent.VK_L);
        r.keyRelease(KeyEvent.VK_L);
        r.keyPress(KeyEvent.VK_E);
        r.keyRelease(KeyEvent.VK_E);
        r.keyPress(KeyEvent.VK_PERIOD);
        r.keyRelease(KeyEvent.VK_PERIOD);

        TimeUtil.sleep(1, TimeUnit.SECONDS);

        r.keyPress(KeyEvent.VK_A);
        r.keyRelease(KeyEvent.VK_A);
        r.keyPress(KeyEvent.VK_H);
        r.keyRelease(KeyEvent.VK_H);
        r.keyPress(KeyEvent.VK_K);
        r.keyRelease(KeyEvent.VK_K);

        r.keyPress(KeyEvent.VK_ENTER);    // confirm by pressing Enter in the end
        r.keyRelease(KeyEvent.VK_ENTER);

    }


    public void userRelogsAs(String name) {
        wait(username);
        clickOn(username);

//        WebElement usernameElement = getWebElementFromListByText(usernameOptions, name);
//        wait(usernameElement);
//        clickOn(usernameElement);

        wait(password);
        typeInto(password, propertyManager.getPasswordForAllUsers());
        waitABit(1000);
        clickOn(login);

        //assert correct user has been loged in
        wait(userInformation);
        Assert.assertEquals(name, userInformation.getText().toLowerCase().replaceAll(SPACE, EMPTY_STRING));

        if (propertyManager.getIsOnDev()) {
            clickOn(getWebElementFromListByText(appList, PPN_ADMINISTRATION_DEV));
        } else {
            clickOn(getWebElementFromListByText(appList, PPN_ADMINISTRATION_TEST));
        }

        //switch to second tab
        ArrayList<String> tabs = new ArrayList<>(getDriver().getWindowHandles());
        getDriver().switchTo().window(tabs.get(1));
    }

    public void userSeesOrganisations(String oraganisations) {
        List<String> orgs = new ArrayList<String>(Arrays.asList(oraganisations.split(SPACE)));

        tableCellNames.stream()
                .filter(p -> p.getText().contains("XTA"))
                .forEach(e -> Assert.assertTrue(orgs.contains(e.getText().replace(SPACE, "_"))));
    }


    public void userDoesntSeeOrganisations(String oraganisations) {
        List<String> orgs = new ArrayList<String>(Arrays.asList(oraganisations.split(SPACE)));

        tableCellNames.stream()
                .filter(p -> p.getText().contains("XTA"))
                .forEach(e -> Assert.assertFalse(orgs.contains(e.getText().replace(SPACE, "_"))));
    }


	public void forUserDoesntSeeCellMenuOption(String tableEntry, String cellMenuOption) {
		    WebElement cellMenu = null;

	        wait(subTableCells);
	        
	        cellMenu = getWebElementFromListByText(tableCells, tableEntry)
                    .findElement(By.cssSelector(".pui-table__cell-menu"));

	        scrollIntoView(cellMenu);
	        hoverOverElement(cellMenu);
	        waitABit(500);

	        //cell menu options
	        List<WebElement> contextMenuOptions = cellMenu.findElements(By.cssSelector("div div ul li"));
	        
	        Assert.assertFalse(contextMenuOptions.stream()
	        		                           .filter(p -> p.getText().contains(cellMenuOption))
	        		                           .findAny()
	        		                           .isPresent());		
	}


	public void userDoesntSeeAktionenOption(String aktionenOption) {
		clickOn(getWebElementFromListByText(buttons, AKTIONEN));
        wait(aktionenOptions);
        
        aktionenOptions.forEach(y -> System.out.println(y.getText()));
        
        Assert.assertFalse(aktionenOptions.stream()
                .filter(p -> p.getText().contains(aktionenOption))
                .findAny()
                .isPresent());
		
	}

    public void userSeesSubTabs(String expectedTabs) {
        String navTabsText = "";
        for (int i = 0; i < secondRowTabs.size(); i++) {
            navTabsText = navTabsText.concat(secondRowTabs.get(i).getText() + " ");
        }
        System.out.println(navTabsText);
        Assert.assertEquals(navTabsText.trim(), expectedTabs);
    }

    public void tableElements(boolean empty) {
        wait(tableCells);
        if (empty) {
            Assert.assertEquals(0, tableCells.size());
        } else {
            Assert.assertNotEquals(0, tableCells.size());
        }
    }

	
	
}
