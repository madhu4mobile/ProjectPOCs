@ignore
Feature: testRun

  Scenario: google search
#    Given driver 'http://google.com'
#    Then waitForUrl('https://google.com')
#    When if(locate("//input[@name='q']").exists)  input("//input[name='q']",'testing')
#    And click('input[name=btnK]')
#    Then waitFor('{h3}Software testing - Wikipedia')

    Given driver 'http://google.com'
    #And input("input[name='q']", 'testing')
    And input("//input[@name='q']", 'wikipedia testing')
    And click('input[name=btnK]')
    #Then waitFor('{h3}Software testing - Wikipedia')
    Then waitFor("//span[text()='Software testing - Wikipedia']")
    And delay(20000)
    #Then waitFor('#rso > div:nth-child(1) > div > div > div > div.yuRUbf > a > h3 > span')
    #Then waigFor('//*[@id="rso"]/div[1]/div/div/div/div[1]/a/h3/span')