Feature: to define all call from JSON response for user

  Background:
    * call read('../resources/myUtils.js')


  Scenario: get all users and compare with individual results

    Given url URL
    When method GET
    Then print response