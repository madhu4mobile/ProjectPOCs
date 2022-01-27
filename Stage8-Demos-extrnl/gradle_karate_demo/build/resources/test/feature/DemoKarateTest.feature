Feature: Demo Karate DSL

  Background:
    Given url 'http://localhost:3000'

  Scenario Outline: Usage of GET using Karate DSL
    Given path '/posts/<id>'
    When method get
    Then status 200
    And match $ ==  {"id": '#notnull',"title": '#notnull',"author": '#notnull'}
    Examples:
      | id |
      | 1  |
      | 2  |
      | 3  |