Feature: To test one response from reqres.in
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/api'

  Scenario: check a user for given id from reqRes.in
    Given path 'users'
    When method get
    Then status 200
    And print "-------->",response.data[0]
    And print "======>",response.data[0].id
    And print "*******",response.data[0]

    * def first = response.data[0]

    Given path 'users', response.data[0].id
    When method get
    Then status 200