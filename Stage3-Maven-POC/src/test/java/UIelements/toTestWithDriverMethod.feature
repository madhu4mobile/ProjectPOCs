Feature: testing with driver method

  Scenario: using driver

    Given driver 'https://google.com'
	#And input('input[name=q]', 'wikepedia automation')
    And input('input[name=q]', 'karate dsl')
    When click('input[name=btnI]')
	#Then waitFor("//span[text()='Automation - Wikipedia']")
    Then waitForUrl('https://github.com/intuit/karate')

    When click('{a}Go to file')
	#//a[@class='btn ml-2']
    #//a[normalize-space(text())='Go to file']
    And def searchField = waitFor('input[name=query]')
    # the above step waits for the karate/ parent branch
    #
	#//input[@name='query']
    Then match driver.url == 'https://github.com/intuit/karate/find/master'