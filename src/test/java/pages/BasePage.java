package pages;

import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import util.PropertyManager;

import java.util.Collections;
import java.util.List;

public abstract class BasePage extends PageObject {

	protected static PropertyManager propertyManager = PropertyManager.getInstance();

	@FindBy(tagName = "body")
	protected WebElement body;

	protected JavascriptExecutor js = (JavascriptExecutor) getDriver();

	public WebElement getBody() {
		return body;
	}

	protected void pressEnter(WebElement webElement) {
		webElement.sendKeys(Keys.ENTER);
	}

	protected void pressArrowDown(WebElement webElement) {
		webElement.sendKeys(Keys.ARROW_DOWN);
	}

	protected void hoverOverElement(WebElement element) {
		withAction().moveToElement(element).build().perform();
	}

	protected void moveToAndClick(WebElement element, int x, int y) {
		withAction().moveToElement(element, x, y).click().build().perform();
	}

	protected WebElement getWebElementFromListByText(List<WebElement> elements, String text) {
		wait(elements);

		elements.removeAll(Collections.singleton(null));

		WebElement el = null;
		for (int i = 0; i < elements.size(); i++) {
			if (elements.get(i).getText().contains(text)) {
				el = elements.get(i);
				i = elements.size();
			}
		}
		System.out.println(el.toString());
		return el;
	}

	protected WebElement getWebElementFromListByAttribute(List<WebElement> elements, String attribute, String text) {
		return elements.stream()
				.filter(t -> (t.getAttribute(attribute) != null))
				.filter(e -> e.getAttribute(attribute).contains(text))//equals(text))
				.findAny().orElse(null);
	}

	protected void scrollIntoView(WebElement webElement) {
		if (js == null) {
			js = (JavascriptExecutor) getDriver();
		}
		js.executeScript("arguments[0].scrollIntoView(true);", webElement);
	}
	
	protected void scrollBy(int x, int y) {
		if (js == null) {
			js = (JavascriptExecutor) getDriver();
		}
		js.executeScript("window.scrollBy(" + x + "," + y + ")");
	}

	protected Boolean isWebElementDisabled(WebElement webElement) {
		if (js == null) {
			js = (JavascriptExecutor) getDriver();
		}
		return (Boolean) js.executeScript("return arguments[0].hasAttribute(\"disabled\");", webElement);
	}

	/**
	 * Waits for the WebElement to be available.
	 *
	 * @param element WebElement to wait for
	 */
	protected void wait(WebElement element) {
		wait(parseSelector(element.toString()));
	}

	/**
	 * Waits for the WebElement to be available.
	 *
	 * @param elements WebElement to wait for
	 */
	protected void wait(List<WebElement> elements) {
		wait(parseSelector(elements.toString()));
	}

	/**
	 * Waits for the WebElement to be available.
	 *
	 * @param selector Selector of the element
	 */
	private void wait(String selector) {
		if (selector != null) {
			waitForRenderedElementsToBePresent(By.cssSelector(selector));
		} else {
			waitABit(1500);
		}
	}

	/**
	 * Parses the "toString" of a WebElement to a valid css selector.
	 *
	 * @param toStringSelector selector of a WebElement
	 * @return css selector
	 */
	private String parseSelector(String toStringSelector) {
		String[] splitSelector = toStringSelector.split("->");
		if (splitSelector.length < 2) {
			return null;
		}
		String selector = splitSelector[1].split("\\],\\s")[0];
		selector = selector.replaceFirst("\\].*?", "").trim();

		if (selector.substring(selector.length()-1).equals("]")) {
			selector = selector.substring(0, selector.length()-1);
		}


		String selectorType = selector.substring(0, 3);

		switch (selectorType) {
			case "id:":
				selector = selector.replaceFirst("id:\\s", "#");
				break;
			case "css":
				selector = selector.replaceFirst("css selector:\\s", "");
				break;
			default:
				String[] split = selector.split(":");
				if (split.length > 1) {
					selector = split[1];
				}
				break;
		}

		return selector.trim();
	}
}
