Feature: to Work With Custom JS function

  Background:
    * def user1Res = read('../resources/user1.json')
    * call read('../resources/myUtils.js')
    * def userRes = read('../resources/myUsers.json')

#  Scenario: to drill down to individual json elements
#    Given url URL
#    And path '1'
#    When method get
#    Then print "response.data.first_name:",response.data.first_name
#    Then match  response.data.first_name == user1Res.data.first_name
#    * print "----------To check the type of json element ------------"
#    And match userRes.page == '#number'
#    And match userRes.data[0].email == '#string'
#    * print "------- following way can be used to check if the json field is not existing or present"
#    And match userRes.student == '#notpresent'


  Scenario: create and play with internal function

    * def sum =
      """
        function(a,b) {
            return a+b;
        }
      """
    #* def result = call sum(1,2)   //This would fail with error not a js function or feature file
    # use the following way instead
    * def result = sum(1,2)
    * print result

