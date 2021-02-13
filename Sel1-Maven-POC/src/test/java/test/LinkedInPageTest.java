package test;

import PageObjecs.LinkedInPageObjects;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class LinkedInPageTest {
    private static WebDriver driver = null; // to make the driver private to this class and static
    public static void main(String[] args) {
        LinkedInPageLoginTest();
    }

    public static void LinkedInPageLoginTest() {
        //When you want to launch any specific version of chrome
        WebDriverManager.chromiumdriver().browserVersion("2.36").setup();
        driver = new ChromeDriver();

        //to link with the LinkedInPage objects repo
        LinkedInPageObjects loginPageObj = new LinkedInPageObjects(driver);

        driver.get("https://www.linkedin.com/");
        loginPageObj.setTextForEmailTextBox("dummy");
        loginPageObj.setTextForPasswordTextBox("myPassword-001");
        loginPageObj.clickLoginButton();

        System.out.println(loginPageObj.readFromAlertMessage());

        Assert.assertEquals("Please enter a valid email address or mobile number.", loginPageObj.readFromAlertMessage().trim());

        driver.close();
        driver.quit();

    }
}
