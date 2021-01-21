Feature: to Drill Down To A User using JSON and js

Background:
  * def user1Res = read('../resources/user1.json')
  * call read('../resources/myUtils.js')
  * def userRes = read('../resources/myUsers.json')

  Scenario: to drill down to individual json elements
    Given url URL
    And path '1'
    When method get
#    Then print "response.data.first_name:",response.data.first_name
    Then print 'user1Res.data.first_name :', user1Res.data.first_name
    Then print 'The first user from myUsers.json :',userRes.data[0]
    * print 'checking root elements (total_pages) from myUsers.json :',userRes.total_pages
    Then match  response.data.first_name == user1Res.data.first_name
    * print "----------To check the type of json element ------------"
    And match userRes.page == '#number'
    And match userRes.data[0].email == '#string'
    * print "------- following way can be used to check if the json field is not existing or present"
    And match userRes.student == '#notpresent'


  Scenario: try to write a loop down to reach to the corresponding user with id

