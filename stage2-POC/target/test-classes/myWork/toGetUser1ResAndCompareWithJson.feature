Feature: to Get User1 Response And to Compare With Json from resources

  Background:
    * def user1Res = read('../resources/user1.json')
    * call read('../resources/myUtils.js')
    * def userRes = read('../resources/myUsers.json')


  Scenario: play with user1 response and Json
#    * print user1Res
#    * print URL
    Given url URL
    And path '1'
    When method GET
    Then status 200
    And print 'response:',response
    And print 'userRes.data[0] :',userRes.data[0]
    And print "userRes.data[0]+ ','+ userRes.support[0] :",userRes.data[0]+ ","+ userRes.support[0]
    And print "userRes.data[0]+ ','+ userRes[3] :",userRes.data[0]+ ","+ userRes[3]
    And print "userRes.data[0].support :",userRes.data[0].support
  # the above print statement is printing user1 and support part but it is not printing the key and value pair.
#    And match response contains userRes.data[0].[0]