package test;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;


//import pageObject classes
import org.openqa.selenium.firefox.FirefoxDriver;
import pages.GoogleSearchPage;

public class GoogleSearchTestPOM {

    private static WebDriver driver = null;

    public static void main(String[] args) {

        GoogleSearchTestFromPOM();

    }

    public static void GoogleSearchTestFromPOM() {

        //When you want to launch any specific version of chrome
        WebDriverManager.chromiumdriver().browserVersion("2.36").setup();
        driver = new ChromeDriver();

//        WebDriverManager.firefoxdriver().setup();
//        driver = new FirefoxDriver();

        driver.get("http://google.com");

//        WebElement searchBox = driver.findElement(By.name("q"));
//        searchBox.sendKeys("Selenium with Java");

        //from PageObject Model elements defined
        GoogleSearchPage.textBox_search(driver).sendKeys("Automation with Selenium");

        //driver.findElement(By.xpath('//input[@name="btnI"]')).click();
        GoogleSearchPage.button_search(driver).click();



        driver.close();
        driver.quit();
    }
}