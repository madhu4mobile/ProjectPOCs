package PageObjecs;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;


public class LinkedInPageObjects {

    WebDriver driver = null;

    By textbox_email     = By.id("session_key");
    By textbox_password     = By.id("session_password");
    //By button_loginButton   = By.xpath("//button[normalize-space()='Sign in']");
    By button_alertMessage= By.xpath ("//p[@class='alert-content']");
    By button_loginButton = By.cssSelector("[data-tracking-control-name='homepage-basic_signin-form_submit-button']");



    public LinkedInPageObjects (WebDriver driver) {
        this.driver = driver;
    }

    public void setTextForEmailTextBox(String email) {
        driver.findElement(textbox_email).sendKeys(email);
    }

    public void setTextForPasswordTextBox(String pw) {
        driver.findElement(textbox_password).sendKeys(pw);
    }

    public void clickLoginButton() {
        driver.findElement(button_loginButton).click();
    }

    public String readFromAlertMessage() {
        String actualErrorMessage = driver.findElement(button_alertMessage).getText();
        return actualErrorMessage;
    }


}
