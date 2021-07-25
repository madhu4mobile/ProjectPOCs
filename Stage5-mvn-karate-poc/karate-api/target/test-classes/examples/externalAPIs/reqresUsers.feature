@ignore
Feature: example karate external-api use case from reqres.in
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/api'

  Scenario: get all users and then get the first user by id
    Given path 'users'
    When method get
    Then status 200
    And print "-------->",response[0]

    * def first = response.data[0]

    Given path 'users', response.data[0].id
    When method get
    Then status 200

  Scenario: create a user and then get it by id
    * def user =
#      """
#          {
#             "data": [
#                {
#                   "id": 12,
#                   "email": "test.user12@reqres.in",
#                   "first_name": "Madhu",
#                   "last_name": "Muppala",
#                   "avatar": "https://reqres.in/img/faces/12-image.jpg"
#                }
#             ]
#          }
#      """
    * def registerUser =
    """
        {
            "email": "eve.holt@reqres.in",
            "password": "pistol"
        }
    """


    #Given url "https://reqres.in/api/register"
    And path 'register'
    #And print "myURI----->",url+path
    And request registerUser
    When method post
    Then status 200
    And print response

    * def token = response.token
    * print 'created response token is: ', token

#    Given path id
#    When method get
#    Then status 200
#    And match response contains user
