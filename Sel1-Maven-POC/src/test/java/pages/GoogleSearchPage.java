package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class GoogleSearchPage {

    static WebElement element = null;
    public static WebElement textBox_search(WebDriver driver) {

        WebElement element = driver.findElement(By.name("q"));
        return element;
    }

    public static WebElement button_search(WebDriver driver) {

        WebElement element = driver.findElement(By.name("btnI"));
        return element;
    }
}
