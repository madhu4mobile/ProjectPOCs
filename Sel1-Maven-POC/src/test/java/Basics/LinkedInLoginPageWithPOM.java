package Basics;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class LinkedInLoginPageWithPOM {

    public static void main(String[] args) {

        linkedInLoginPage();
    }

    public static void linkedInLoginPage() {
        //When you want to launch any specific version of chrome
        //WebDriverManager.chromiumdriver().browserVersion("2.36").setup();

        WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();

        driver.get("http://google.com");

        WebElement searchBox = driver.findElement(By.name("q"));
        searchBox.sendKeys("Selenium with Java");

        //driver.findElement(By.name("btnK")).sendKeys(Keys.RETURN);  //it fails saying

        driver.findElement(By.xpath("//*[@id='gbqfbb']")).click();
        driver.close();
        driver.quit();
    }
}
