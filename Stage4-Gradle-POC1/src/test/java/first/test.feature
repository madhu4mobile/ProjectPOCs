Feature: Test all APIs in the following site, https://jsonplaceholder.typicode.com
  Intentionn is to test  APIs with different entpoint

  Background:
    * url 'https://jsonplaceholder.typicode.com/'

  Scenario: Make the Primary call to check posts status

    Given path 'posts'
    When method GET
    Then status 200
    Then print "Title of the post with Id : 1 is --> ",  response[0].title