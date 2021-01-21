@ignore
Feature: to test un ignored feature to run

  Scenario: try using direct url for ui test instead of driver
    Given driver 'http://google.com'
    * if(locate("//input[@name='q']").exists)  input("//input[name='q']",'wikipedia Karate')
    And input("//input[@name='q']", 'wikipedia Karate')
    And click('input[name=btnK]')
    Then waitFor("//span[text()='Karate - Wikipedia']")
    #And delay(20000)