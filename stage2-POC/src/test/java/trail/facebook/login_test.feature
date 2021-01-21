Feature: checking ORs from json

  Background:
    #* def myOR = read('this:loginOR.json')
    * def myOR = read('this:test.json')
    * call myOR

  Scenario: try reading from loginOR.json
#    * print "the first json element as loginPg:",myOR[1]
#    Given driver 'https://www.facebook.com/login'
#    And waitForUrl('https://www.facebook.com/login')
#    And click('testAccounts.submit')
#    #And input('#email', 'testEmail')
#    * delay(5000)

  * print " Author :",author
  * print " Role   :",role