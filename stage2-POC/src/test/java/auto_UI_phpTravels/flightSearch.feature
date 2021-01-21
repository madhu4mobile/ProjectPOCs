Feature: to test E2E php Travels site





  Scenario: flight search page

    Given driver 'https://phptravels.net/'
    When waitForUrl('https://phptravels.net/')
    And maximize()
    And click("[href='\#flights']")
    #* delay(5000)
    And click("[for='flightSearchRadio-2']")
    And click('#s2id_location_from')
    And input('#s2id_location_from [tabindex]','ORD')
    * delay(25000)